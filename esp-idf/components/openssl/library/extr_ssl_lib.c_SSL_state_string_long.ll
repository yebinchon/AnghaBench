; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_state_string_long.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_state_string_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"UNKWN \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SSLERR\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"before SSL initialization\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"SSL negotiation finished successfully\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write client hello\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS read server hello\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read server certificate\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS read server key exchange\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"SSLv3/TLS read server certificate request\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"SSLv3/TLS read server session ticket\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SSLv3/TLS read server done\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write client certificate\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"SSLv3/TLS write client key exchange\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write certificate verify\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS write change cipher spec\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"SSLv3/TLS write finished\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read change cipher spec\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"SSLv3/TLS read finished\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS read client hello\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"SSLv3/TLS write hello request\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write server hello\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS write certificate\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"SSLv3/TLS write key exchange\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"SSLv3/TLS write certificate request\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"SSLv3/TLS write session ticket\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SSLv3/TLS write server done\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read client certificate\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"SSLv3/TLS read client key exchange\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"SSLv3/TLS read certificate verify\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"DTLS1 read hello verify request\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"DTLS1 write hello verify request\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SSL_state_string_long(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @SSL_ASSERT2(i32* %4)
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @ossl_statem_in_error(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %44

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @SSL_get_state(i32* %11)
  switch i32 %12, label %42 [
    i32 158, label %13
    i32 143, label %14
    i32 146, label %15
    i32 150, label %16
    i32 157, label %17
    i32 153, label %18
    i32 156, label %19
    i32 152, label %20
    i32 151, label %21
    i32 149, label %22
    i32 144, label %23
    i32 148, label %24
    i32 147, label %25
    i32 134, label %25
    i32 145, label %26
    i32 133, label %26
    i32 155, label %27
    i32 140, label %27
    i32 154, label %28
    i32 138, label %28
    i32 139, label %29
    i32 132, label %30
    i32 128, label %31
    i32 136, label %32
    i32 131, label %33
    i32 135, label %34
    i32 130, label %35
    i32 129, label %36
    i32 142, label %37
    i32 137, label %38
    i32 141, label %39
    i32 160, label %40
    i32 159, label %41
  ]

13:                                               ; preds = %10
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %43

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %43

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %43

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %43

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %43

18:                                               ; preds = %10
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %43

19:                                               ; preds = %10
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %43

20:                                               ; preds = %10
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %43

21:                                               ; preds = %10
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %43

22:                                               ; preds = %10
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %43

23:                                               ; preds = %10
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %43

24:                                               ; preds = %10
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %43

25:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %43

26:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %43

27:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %43

28:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %43

29:                                               ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %43

30:                                               ; preds = %10
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %43

31:                                               ; preds = %10
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %43

32:                                               ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %43

33:                                               ; preds = %10
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %43

34:                                               ; preds = %10
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %43

35:                                               ; preds = %10
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %43

36:                                               ; preds = %10
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %43

37:                                               ; preds = %10
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %43

38:                                               ; preds = %10
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %43

39:                                               ; preds = %10
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %43

40:                                               ; preds = %10
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8** %3, align 8
  br label %43

41:                                               ; preds = %10
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8** %3, align 8
  br label %43

42:                                               ; preds = %10
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  br label %44

44:                                               ; preds = %43, %9
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @SSL_ASSERT2(i32*) #1

declare dso_local i64 @ossl_statem_in_error(i32*) #1

declare dso_local i32 @SSL_get_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
