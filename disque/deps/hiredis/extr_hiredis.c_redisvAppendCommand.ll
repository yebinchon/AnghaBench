; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisvAppendCommand.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_redisvAppendCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REDIS_ERR_OOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisvAppendCommand(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @redisvFormatCommand(i8** %8, i8* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @REDIS_ERR_OOM, align 4
  %18 = call i32 @__redisSetError(i32* %16, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @REDIS_ERR, align 4
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @__redisAppendCommand(i32* %21, i8* %22, i32 %23)
  %25 = load i64, i64* @REDIS_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @free(i8* %28)
  %30 = load i32, i32* @REDIS_ERR, align 4
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %20
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i64, i64* @REDIS_OK, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %27, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @redisvFormatCommand(i8**, i8*, i32) #1

declare dso_local i32 @__redisSetError(i32*, i32, i8*) #1

declare dso_local i64 @__redisAppendCommand(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
