; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_element_descriptors.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_element_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i8*, i32, i8* }

@N = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"DVB Teletext\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"DVB Subtitling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32*)* @decode_element_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_element_descriptors(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  br label %11

11:                                               ; preds = %171, %3
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @bits_bytes_left(i32* %12)
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %172

15:                                               ; preds = %11
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @bits_get(i32* %16, i32 8)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @bits_get(i32* %19, i32 8)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %166 [
    i32 5, label %23
    i32 10, label %39
    i32 86, label %70
    i32 89, label %102
    i32 106, label %134
    i32 122, label %150
  ]

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @bits_get(i32* %24, i32 32)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store i8* %25, i8** %33, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 4
  %37 = mul nsw i32 8, %36
  %38 = call i32 @bits_skip(i32* %34, i32 %37)
  br label %171

39:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = call i8* @bits_get(i32* %44, i32 8)
  %46 = ptrtoint i8* %45 to i8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %48
  store i8 %46, i8* %49, align 1
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %40

53:                                               ; preds = %40
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %55 = call i32 @lang_for_code2(i8* %54)
  %56 = call i32 @lang_to_code(i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  store i32 %56, i32* %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 3
  %68 = mul nsw i32 8, %67
  %69 = call i32 @bits_skip(i32* %65, i32 %68)
  br label %171

70:                                               ; preds = %15
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i8*, i8** @N, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i8* %79, i8** %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strncpy(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 80)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 8, %99
  %101 = call i32 @bits_skip(i32* %98, i32 %100)
  br label %171

102:                                              ; preds = %15
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  %111 = load i8*, i8** @N, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store i8* %111, i8** %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @strncpy(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 80)
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 8, %131
  %133 = call i32 @bits_skip(i32* %130, i32 %132)
  br label %171

134:                                              ; preds = %15
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 129, i32* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @update_pes_kind(%struct.TYPE_8__* %143, i32 %144)
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = mul nsw i32 8, %147
  %149 = call i32 @bits_skip(i32* %146, i32 %148)
  br label %171

150:                                              ; preds = %15
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 135, i32* %158, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @update_pes_kind(%struct.TYPE_8__* %159, i32 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = mul nsw i32 8, %163
  %165 = call i32 @bits_skip(i32* %162, i32 %164)
  br label %171

166:                                              ; preds = %15
  %167 = load i32*, i32** %6, align 8
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 8, %168
  %170 = call i32 @bits_skip(i32* %167, i32 %169)
  br label %171

171:                                              ; preds = %166, %150, %134, %102, %70, %53, %23
  br label %11

172:                                              ; preds = %11
  ret void
}

declare dso_local i32 @bits_bytes_left(i32*) #1

declare dso_local i8* @bits_get(i32*, i32) #1

declare dso_local i32 @bits_skip(i32*, i32) #1

declare dso_local i32 @lang_to_code(i32) #1

declare dso_local i32 @lang_for_code2(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @update_pes_kind(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
