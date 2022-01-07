; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_InitMultipleFiles.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_InitMultipleFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numlumps = common dso_local global i32 0, align 4
@lumpinfo = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"W_InitFiles: no files found\00", align 1
@lumpcache = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Couldn't allocate lumpcache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @W_InitMultipleFiles(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* @numlumps, align 4
  %4 = call i8* @malloc(i32 1)
  store i8* %4, i8** @lumpinfo, align 8
  br label %5

5:                                                ; preds = %13, %1
  %6 = load i8**, i8*** %2, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i8**, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @W_AddFile(i8* %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i8**, i8*** %2, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %2, align 8
  br label %5

16:                                               ; preds = %5
  %17 = load i32, i32* @numlumps, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @I_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @numlumps, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i8* @malloc(i32 %26)
  store i8* %27, i8** @lumpcache, align 8
  %28 = load i8*, i8** @lumpcache, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = call i32 @I_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i8*, i8** @lumpcache, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @memset(i8* %33, i32 0, i32 %34)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @W_AddFile(i8*) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
