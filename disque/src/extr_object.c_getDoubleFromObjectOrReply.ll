; ModuleID = '/home/carl/AnghaBench/disque/src/extr_object.c_getDoubleFromObjectOrReply.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_object.c_getDoubleFromObjectOrReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"value is not a valid float\00", align 1
@C_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getDoubleFromObjectOrReply(i32* %0, i32* %1, double* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store double* %2, double** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @getDoubleFromObject(i32* %11, double* %10)
  %13 = load i64, i64* @C_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @addReplyError(i32* %19, i8* %20)
  br label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @addReplyError(i32* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @C_ERR, align 4
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load double, double* %10, align 8
  %29 = load double*, double** %8, align 8
  store double %28, double* %29, align 8
  %30 = load i64, i64* @C_OK, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i64 @getDoubleFromObject(i32*, double*) #1

declare dso_local i32 @addReplyError(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
