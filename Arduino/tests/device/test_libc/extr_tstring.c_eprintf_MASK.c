void FUNC0 (int line, char *result, char *expected, int size)
{
  if (size != 0)
    printf ("Failure at line %d, result is <%.*s>, should be <%s> of size %d\n",
             line, size, result, expected, size);
  else
    FUNC0 ("Failure at line %d, result is <%s>, should be <%s>\n",
             line, result, expected);
}