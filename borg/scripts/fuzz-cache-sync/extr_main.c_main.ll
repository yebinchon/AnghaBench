; ModuleID = '/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/borg/scripts/fuzz-cache-sync/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSZ = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @BUFSZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = call i32* @hashindex_init(i32 0, i32 32, i32 12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @cache_sync_init(i32* %14)
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %38, %0
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* @BUFSZ, align 4
  %19 = call i32 @read(i32 0, i8* %12, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %39

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cache_sync_feed(i32* %24, i8* %12, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %6, align 8
  %31 = call i8* @cache_sync_error(i32* %30)
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i8* @cache_sync_error(i32* %35)
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %36)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %44

38:                                               ; preds = %29, %23
  br label %16

39:                                               ; preds = %22
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @hashindex_free(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @cache_sync_free(i32* %42)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %33
  %45 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @hashindex_init(i32, i32, i32) #2

declare dso_local i32* @cache_sync_init(i32*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @cache_sync_feed(i32*, i8*, i32) #2

declare dso_local i8* @cache_sync_error(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @hashindex_free(i32*) #2

declare dso_local i32 @cache_sync_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
