void FUNC0(char *proto, int proto_size,
                  char *authorization, int authorization_size,
                  char *hostname, int hostname_size,
                  int *port_ptr, char *path, int path_size, const char *url)
{
    const char *p, *ls, *ls2, *at, *at2, *col, *brk;

    if (port_ptr)
        *port_ptr = -1;
    if (proto_size > 0)
        proto[0] = 0;
    if (authorization_size > 0)
        authorization[0] = 0;
    if (hostname_size > 0)
        hostname[0] = 0;
    if (path_size > 0)
        path[0] = 0;

    /* parse protocol */
    if ((p = strchr(url, ':'))) {
        FUNC0(proto, url, FUNC0(proto_size, p + 1 - url));
        p++; /* skip ':' */
        if (*p == '/')
            p++;
        if (*p == '/')
            p++;
    } else {
        /* no protocol means plain filename */
        FUNC0(path, url, path_size);
        return;
    }

    /* separate path from hostname */
    ls = FUNC0(p, '/');
    ls2 = FUNC0(p, '?');
    if (!ls)
        ls = ls2;
    else if (ls && ls2)
        ls = FUNC0(ls, ls2);
    if (ls)
        FUNC0(path, ls, path_size);
    else
        ls = &p[strlen(p)];  // XXX

    /* the rest is hostname, use that to parse auth/port */
    if (ls != p) {
        /* authorization (user[:pass]@hostname) */
        at2 = p;
        while ((at = FUNC0(p, '@')) && at < ls) {
            FUNC0(authorization, at2,
                       FUNC0(authorization_size, at + 1 - at2));
            p = at + 1; /* skip '@' */
        }

        if (*p == '[' && (brk = FUNC0(p, ']')) && brk < ls) {
            /* [host]:port */
            FUNC0(hostname, p + 1,
                       FUNC0(hostname_size, brk - p));
            if (brk[1] == ':' && port_ptr)
                *port_ptr = FUNC0(brk + 2);
        } else if ((col = FUNC0(p, ':')) && col < ls) {
            FUNC0(hostname, p,
                       FUNC0(col + 1 - p, hostname_size));
            if (port_ptr)
                *port_ptr = FUNC0(col + 1);
        } else
            FUNC0(hostname, p,
                       FUNC0(ls + 1 - p, hostname_size));
    }
}