void *FUNC0(unsigned int *sbuff)
{
    int ret;

    ret = FUNC0((char *)&sbuff[0], (struct TocEntry *)&sbuff[1024 / 4]);

    sbuff[0] = ret;

    return sbuff;
}