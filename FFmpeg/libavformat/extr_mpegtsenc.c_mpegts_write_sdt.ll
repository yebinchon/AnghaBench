; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_write_sdt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_mpegts_write_sdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i64*, i64*, i32 }

@SECTION_LENGTH = common dso_local global i32 0, align 4
@SDT_TID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @mpegts_write_sdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpegts_write_sdt(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* @SECTION_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @put16(i32** %7, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  store i32 255, i32* %25, align 4
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %112, %1
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @put16(i32** %7, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 252, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %7, align 8
  store i32 4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 72, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i32 @putbuf(i32** %7, i64* %62, i64 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 @putbuf(i32** %7, i64* %72, i64 %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = sub nsw i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 13
  %92 = load i32, i32* %12, align 4
  %93 = shl i32 %92, 12
  %94 = or i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = sub nsw i64 %101, 2
  %103 = or i64 %95, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = ashr i32 %105, 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %33
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %27

115:                                              ; preds = %27
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i32, i32* @SDT_TID, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = ptrtoint i32* %125 to i64
  %127 = ptrtoint i32* %20 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = call i32 @mpegts_write_section1(i32* %117, i32 %118, i32 %121, i32 %124, i32 0, i32 0, i32* %20, i32 %130)
  %132 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %132)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put16(i32**, i32) #2

declare dso_local i32 @putbuf(i32**, i64*, i64) #2

declare dso_local i32 @mpegts_write_section1(i32*, i32, i32, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
