void *FUNC0(unsigned int *sbuff)
{
    int ret;

    if (FUNC0())
        ret = FUNC0(sbuff[0]);
    else
        ret = -1;

    sbuff[0] = ret;
    return sbuff;
}