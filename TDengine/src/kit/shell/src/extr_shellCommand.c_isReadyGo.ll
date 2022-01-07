; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellCommand.c_isReadyGo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellCommand.c_isReadyGo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i8* }

@MAX_COMMAND_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"(^.*;\\s*$)|(^\\s*$)|(^\\s*exit\\s*$)|(^\\s*q\\s*$)|(^\\s*quit\\s*$)|(^\\s*clear\\s*$)\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isReadyGo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br label %21

21:                                               ; preds = %13, %1
  %22 = phi i1 [ false, %1 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* @MAX_COMMAND_SIZE, align 8
  %26 = call i64 @calloc(i32 1, i64 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* @MAX_COMMAND_SIZE, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i32 @memset(i64 %34, i32 0, i64 %39)
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %44, i64 %47)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @REG_EXTENDED, align 4
  %52 = load i32, i32* @REG_ICASE, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @regex_match(i8* %49, i8* %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %21
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @free(i8* %57)
  store i32 1, i32* %2, align 4
  br label %62

59:                                               ; preds = %21
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @free(i8* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #1

declare dso_local i64 @regex_match(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
