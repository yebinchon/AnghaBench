; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CheckSight.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_sight.c_P_CheckSight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i8*, i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@sectors = common dso_local global i32 0, align 4
@numsectors = common dso_local global i32 0, align 4
@rejectmatrix = common dso_local global i32* null, align 8
@sightcounts = common dso_local global i32* null, align 8
@validcount = common dso_local global i32 0, align 4
@sightzstart = common dso_local global i8* null, align 8
@topslope = common dso_local global i8* null, align 8
@bottomslope = common dso_local global i8* null, align 8
@strace = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@t2x = common dso_local global i64 0, align 8
@t2y = common dso_local global i64 0, align 8
@numnodes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_CheckSight(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @sectors, align 4
  %17 = sub nsw i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @sectors, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @numsectors, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 3
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 7
  %34 = shl i32 1, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** @rejectmatrix, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %2
  %44 = load i32*, i32** @sightcounts, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %120

48:                                               ; preds = %2
  %49 = load i32*, i32** @sightcounts, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* @validcount, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @validcount, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %57, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr i8, i8* %62, i64 %68
  store i8* %69, i8** @sightzstart, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  %78 = load i8*, i8** @sightzstart, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** @topslope, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @sightzstart, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** @bottomslope, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @strace, i32 0, i32 3), align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @strace, i32 0, i32 2), align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* @t2x, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* @t2y, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  store i64 %109, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @strace, i32 0, i32 1), align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %112, %115
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @strace, i32 0, i32 0), align 8
  %117 = load i64, i64* @numnodes, align 8
  %118 = sub nsw i64 %117, 1
  %119 = call i32 @P_CrossBSPNode(i64 %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %48, %43
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @P_CrossBSPNode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
