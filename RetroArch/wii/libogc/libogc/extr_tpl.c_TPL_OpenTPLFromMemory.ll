; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_OpenTPLFromMemory.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_OpenTPLFromMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@TPL_FILE_TYPE_MEM = common dso_local global i32 0, align 4
@TPL_HDR_NTEXTURE_FIELD = common dso_local global i32 0, align 4
@TPL_HDR_DESCR_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TPL_OpenTPLFromMemory(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %3
  store i32 -1, i32* %4, align 4
  br label %106

21:                                               ; preds = %17
  %22 = load i32, i32* @TPL_FILE_TYPE_MEM, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @TPL_HDR_NTEXTURE_FIELD, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @TPL_HDR_DESCR_FIELD, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = bitcast i8* %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %99, %21
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %102

46:                                               ; preds = %40
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = ptrtoint %struct.TYPE_7__* %51 to i64
  store i64 %52, i64* %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = bitcast i8* %55 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %12, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = ptrtoint %struct.TYPE_6__* %70 to i64
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %46
  %75 = load i8*, i8** %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = bitcast i8* %77 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %13, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %74, %46
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %93, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %98, align 8
  br label %99

99:                                               ; preds = %88
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %40

102:                                              ; preds = %40
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %105, align 8
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %20
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
