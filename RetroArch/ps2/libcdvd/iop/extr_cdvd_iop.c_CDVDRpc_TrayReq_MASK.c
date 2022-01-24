void *FUNC0(unsigned int *sbuff)
{
    int ret;

    FUNC0(sbuff[0], (int *)&ret);

    sbuff[0] = ret;
    return sbuff;
}