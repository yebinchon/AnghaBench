; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_state_string.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/library/extr_ssl_lib.c_SSL_state_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"UNKWN \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"SSLERR\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"PINIT \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SSLOK \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TWCH\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TRSH\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TRSC\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"TRSKE\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"TRCR\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"TRSD\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"TWCC\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"TWCKE\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TWCV\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"TWCCS\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"TWFIN\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"TRCCS\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"TRFIN\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"TWHR\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"TRCH\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"TWSH\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"TWSC\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"TWSKE\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"TWCR\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"TWSD\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"TRCC\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"TRCKE\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"TRCV\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"DRCHV\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"DWCHV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SSL_state_string(i32* %0) #0 {
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
  br label %42

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @SSL_get_state(i32* %11)
  switch i32 %12, label %40 [
    i32 156, label %13
    i32 142, label %14
    i32 145, label %15
    i32 149, label %16
    i32 155, label %17
    i32 151, label %18
    i32 154, label %19
    i32 150, label %20
    i32 148, label %21
    i32 143, label %22
    i32 147, label %23
    i32 133, label %24
    i32 146, label %24
    i32 132, label %25
    i32 144, label %25
    i32 139, label %26
    i32 153, label %26
    i32 137, label %27
    i32 152, label %27
    i32 131, label %28
    i32 138, label %29
    i32 128, label %30
    i32 135, label %31
    i32 130, label %32
    i32 134, label %33
    i32 129, label %34
    i32 141, label %35
    i32 136, label %36
    i32 140, label %37
    i32 158, label %38
    i32 157, label %39
  ]

13:                                               ; preds = %10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %41

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %41

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %41

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %41

17:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %41

18:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %41

19:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %41

20:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %41

21:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %41

22:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %41

23:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %41

24:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %41

25:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %41

26:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %41

27:                                               ; preds = %10, %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %41

28:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %3, align 8
  br label %41

29:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %3, align 8
  br label %41

30:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8** %3, align 8
  br label %41

31:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8** %3, align 8
  br label %41

32:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %3, align 8
  br label %41

33:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %3, align 8
  br label %41

34:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8** %3, align 8
  br label %41

35:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8** %3, align 8
  br label %41

36:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i8** %3, align 8
  br label %41

37:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8** %3, align 8
  br label %41

38:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8** %3, align 8
  br label %41

39:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8** %3, align 8
  br label %41

40:                                               ; preds = %10
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
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
