__attribute__((used)) static void *FUNC0(int n) {
	static char *avail, *limit;
	
	n = (n + sizeof(char *) - 1)&~(sizeof(char *) - 1);
	if (n >= limit - avail) {
		avail = malloc(n + 4*1024);
		FUNC0(avail);
		limit = avail + n + 4*1024;
	}
	avail += n;
	return avail - n;
}