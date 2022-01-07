; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kc68k.c_C68k_Save_State.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kc68k.c_C68k_Save_State.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@C68K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @C68k_Save_State to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @C68k_Save_State(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 15
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = bitcast i32* %18 to i8*
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %19, i32 8, i32 1, i32* %20)
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 14
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = bitcast i32* %35 to i8*
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %36, i32 8, i32 1, i32* %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 13
  %45 = bitcast i32* %44 to i8*
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %45, i32 8, i32 1, i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 12
  %50 = bitcast i32* %49 to i8*
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %50, i32 8, i32 1, i32* %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 11
  %55 = bitcast i32* %54 to i8*
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %55, i32 8, i32 1, i32* %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 10
  %60 = bitcast i32* %59 to i8*
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %60, i32 8, i32 1, i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 9
  %65 = bitcast i32* %64 to i8*
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %65, i32 8, i32 1, i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %70, i32 8, i32 1, i32* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = bitcast i32* %74 to i8*
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %75, i32 8, i32 1, i32* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 6
  %80 = bitcast i32* %79 to i8*
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %80, i32 8, i32 1, i32* %81)
  %83 = call i64 @C68k_Get_PC(i32* @C68K)
  store i64 %83, i64* %7, align 8
  %84 = bitcast i64* %7 to i8*
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %84, i32 8, i32 1, i32* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = bitcast i32* %88 to i8*
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %89, i32 8, i32 1, i32* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = bitcast i32* %93 to i8*
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %94, i32 4, i32 1, i32* %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = bitcast i32* %98 to i8*
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %99, i32 4, i32 1, i32* %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = bitcast i32* %103 to i8*
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %104, i32 4, i32 1, i32* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = bitcast i32* %108 to i8*
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %109, i32 4, i32 1, i32* %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = bitcast i32* %113 to i8*
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @ywrite(%struct.TYPE_6__* %5, i8* %114, i32 8, i32 1, i32* %115)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ywrite(%struct.TYPE_6__*, i8*, i32, i32, i32*) #2

declare dso_local i64 @C68k_Get_PC(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
