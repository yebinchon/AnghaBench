; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_perform_one_test.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngunknown.c_perform_one_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@chunk_info = common dso_local global %struct.TYPE_2__* null, align 8
@PNG_HANDLE_CHUNK_AS_DEFAULT = common dso_local global i64 0, align 8
@PNG_INFO_IDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"chunk handled inconsistently in count tests\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"chunk handled inconsistently in option tests\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"new known chunk before IDAT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"new unknown chunk before IDAT\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"new known chunk after IDAT\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"new unknown chunk after IDAT\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"before IDAT\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"after IDAT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8**, i32*, i32*, i32)* @perform_one_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perform_one_test(i32* %0, i32 %1, i8** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x [4 x i32]], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @rewind(i32* %16)
  %18 = call i32 (...) @clear_keep()
  %19 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @memcpy(i32* %20, i32* %21, i32 16)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8**, i8*** %9, align 8
  %26 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @check(i32* %23, i32 %24, i8** %25, i32* %27, i32* %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chunk_info, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PNG_HANDLE_CHUNK_AS_DEFAULT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %6
  %38 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PNG_INFO_IDAT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @PNG_INFO_IDAT, align 4
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %37, %6
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %61, %64
  %66 = and i32 %58, %65
  %67 = call i32 @check_error(i32* %51, i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 0, i64 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %79, i64 0, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %78, %81
  %83 = and i32 %75, %82
  %84 = call i32 @check_error(i32* %68, i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %85 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %88, i64 0, i64 0
  %90 = load i32, i32* %89, align 16
  %91 = xor i32 %90, -1
  %92 = and i32 %87, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @check_error(i32* %93, i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %96 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %96, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %102, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = xor i32 %105, -1
  %107 = and i32 %98, %106
  store i32 %107, i32* %15, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @check_error(i32* %108, i32 %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %111 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %111, i64 0, i64 2
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %114, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = xor i32 %116, -1
  %118 = and i32 %113, %117
  store i32 %118, i32* %15, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @check_error(i32* %119, i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %122 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %125, i64 0, i64 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %128, i64 0, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = xor i32 %131, -1
  %133 = and i32 %124, %132
  store i32 %133, i32* %15, align 4
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @check_error(i32* %134, i32 %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %13, align 4
  %139 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %139, i64 0, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %142, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %141, %144
  %146 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %146, i64 0, i64 0
  %148 = load i32, i32* %147, align 16
  %149 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %149, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @check_handling(i32* %137, i32 %138, i32 %145, i32 %148, i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %13, align 4
  %156 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %156, i64 0, i64 2
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 0
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %158, %161
  %163 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %163, i64 0, i64 2
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %14, i64 0, i64 1
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %166, i64 0, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @check_handling(i32* %154, i32 %155, i32 %162, i32 %165, i32 %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @clear_keep(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @check(i32*, i32, i8**, i32*, i32*, i32) #1

declare dso_local i32 @check_error(i32*, i32, i8*) #1

declare dso_local i32 @check_handling(i32*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
