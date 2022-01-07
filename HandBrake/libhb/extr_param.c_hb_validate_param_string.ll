; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_param_string.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_param.c_hb_validate_param_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"hb_validate_param_string: Error compiling regex for pattern (%s).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_validate_param_string(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @REG_EXTENDED, align 4
  %9 = load i32, i32* @REG_ICASE, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @regcomp(i32* %6, i8* %7, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @regexec(i32* %6, i8* %14, i32 0, i32* null, i32 0)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @regfree(i32* %6)
  store i32 0, i32* %3, align 4
  br label %25

19:                                               ; preds = %13
  br label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @hb_log(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %19
  %24 = call i32 @regfree(i32* %6)
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i32 @hb_log(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
