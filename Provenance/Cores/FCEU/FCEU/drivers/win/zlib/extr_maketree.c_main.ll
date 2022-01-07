; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/win/zlib/extr_maketree.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/drivers/win/zlib/extr_maketree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@zcalloc = common dso_local global i32 0, align 4
@zcfree = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"inflate_trees_fixed error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"/* inffixed.h -- table for decoding fixed codes\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c" * Generated automatically by the maketree.c program\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"/* WARNING: this file should *not* be used by applications. It is\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"   part of the implementation of the compression library and is\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"   subject to change. Applications should only use zlib.h.\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"local uInt fixed_bl = %d;\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"local uInt fixed_bd = %d;\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"local inflate_huft fixed_tl[] = {\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"  };\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"local inflate_huft fixed_td[] = {\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = load i32, i32* @zcalloc, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @zcfree, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = call i32 @inflate_trees_fixed(i32* %2, i32* %3, i32** %4, i32** %5, %struct.TYPE_3__* %6)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %43

19:                                               ; preds = %0
  %20 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %25 = call i32 @puts(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @maketree(i32 %34, i32* %35)
  %37 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @maketree(i32 %39, i32* %40)
  %42 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %43

43:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @inflate_trees_fixed(i32*, i32*, i32**, i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @maketree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
