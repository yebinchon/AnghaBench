; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_panic_hooks.c_panic_dump_mem.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_panic_hooks.c_panic_dump_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@panic_dump_buf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%p: \00", align 1
@panic_dump_mem.base64_table = internal global [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @panic_dump_mem(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** @panic_dump_buf, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4096
  %11 = bitcast i32* %10 to i8*
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %109, %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %119

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = call i32 @kvtophys(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %109

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32*, i32** @panic_dump_buf, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to i32*
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @WKdm_compress_new(i32* %23, i32* %26, i8* %27, i32 4095)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %119

32:                                               ; preds = %21
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @kdb_log(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 3
  switch i32 %36, label %49 [
    i32 1, label %37
    i32 2, label %43
  ]

37:                                               ; preds = %32
  %38 = load i32*, i32** @panic_dump_buf, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %37
  %44 = load i32*, i32** @panic_dump_buf, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32*, i32** @panic_dump_buf, align 8
  store i32* %50, i32** %7, align 8
  br label %51

51:                                               ; preds = %54, %49
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 2
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* @panic_dump_mem.base64_table, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @consdebug_log(i8 signext %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 4
  %72 = or i32 %67, %71
  %73 = and i32 %72, 63
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [65 x i8], [65 x i8]* @panic_dump_mem.base64_table, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @consdebug_log(i8 signext %77)
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 2
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 6
  %87 = or i32 %82, %86
  %88 = and i32 %87, 63
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [65 x i8], [65 x i8]* @panic_dump_mem.base64_table, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @consdebug_log(i8 signext %92)
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 63
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [65 x i8], [65 x i8]* @panic_dump_mem.base64_table, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @consdebug_log(i8 signext %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32* %104, i32** %7, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 3
  store i32 %106, i32* %6, align 4
  br label %51

107:                                              ; preds = %51
  %108 = call i32 @consdebug_log(i8 signext 10)
  br label %109

109:                                              ; preds = %107, %20
  %110 = load i8*, i8** %3, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = bitcast i32* %114 to i8*
  store i8* %115, i8** %3, align 8
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = load i32, i32* %4, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %12

119:                                              ; preds = %31, %12
  ret void
}

declare dso_local i32 @kvtophys(i32) #1

declare dso_local i32 @WKdm_compress_new(i32*, i32*, i8*, i32) #1

declare dso_local i32 @kdb_log(i8*, i8*) #1

declare dso_local i32 @consdebug_log(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
