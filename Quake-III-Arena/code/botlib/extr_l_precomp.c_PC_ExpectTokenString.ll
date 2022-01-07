; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ExpectTokenString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_ExpectTokenString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"couldn't find expected %s\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"expected %s, found %s\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_ExpectTokenString(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @PC_ReadToken(i32* %7, %struct.TYPE_3__* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i32*, i8*, i8*, ...) @SourceError(i32* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i32 %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32*, i8*, i8*, ...) @SourceError(i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %25)
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %3, align 4
  br label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @qtrue, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %21, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @PC_ReadToken(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @SourceError(i32*, i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
