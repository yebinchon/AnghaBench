; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_program_map.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_program_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i8*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_program_map(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bits_init(i32* %3, i32 %21, i32 %25, i32 0)
  %27 = call i8* @bits_get(i32* %3, i32 8)
  %28 = call i8* @bits_get(i32* %3, i32 4)
  %29 = call i8* @bits_get(i32* %3, i32 12)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = call i8* @bits_get(i32* %3, i32 16)
  %32 = call i8* @bits_get(i32* %3, i32 2)
  %33 = call i8* @bits_get(i32* %3, i32 5)
  %34 = call i8* @bits_get(i32* %3, i32 1)
  %35 = call i8* @bits_get(i32* %3, i32 8)
  %36 = call i8* @bits_get(i32* %3, i32 8)
  %37 = call i8* @bits_get(i32* %3, i32 3)
  %38 = call i8* @bits_get(i32* %3, i32 13)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = call i8* @bits_get(i32* %3, i32 4)
  %43 = call i8* @bits_get(i32* %3, i32 12)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %87, %1
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 2
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %45
  %51 = call i8* @bits_get(i32* %3, i32 8)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = call i8* @bits_get(i32* %3, i32 8)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %91

63:                                               ; preds = %50
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = call i8* @bits_get(i32* %3, i32 32)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %69, %66, %63
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %84, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = call i8* @bits_get(i32* %3, i32 8)
  br label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %78

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %45

91:                                               ; preds = %62, %45
  br label %92

92:                                               ; preds = %98, %91
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = call i8* @bits_get(i32* %3, i32 8)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %92

101:                                              ; preds = %92
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 9, %102
  store i32 %103, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %159, %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %108, label %162

108:                                              ; preds = %104
  %109 = call i8* @bits_get(i32* %3, i32 8)
  %110 = ptrtoint i8* %109 to i8
  store i8 %110, i8* %13, align 1
  %111 = call i8* @bits_get(i32* %3, i32 3)
  %112 = call i8* @bits_get(i32* %3, i32 13)
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %14, align 4
  %114 = call i8* @bits_get(i32* %3, i32 4)
  %115 = call i8* @bits_get(i32* %3, i32 12)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %15, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i8, i8* %13, align 1
  %120 = call i32 @update_ts_streams(%struct.TYPE_11__* %117, i32 %118, i32 0, i8 zeroext %119, i32 -1, i32* %16)
  %121 = load i32, i32* %16, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %108
  %124 = load i32, i32* %12, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 %124, i32* %132, align 4
  br label %133

133:                                              ; preds = %123, %108
  %134 = load i32, i32* %15, align 4
  %135 = icmp ugt i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @bits_clone(i32* %17, i32* %3, i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @decode_element_descriptors(%struct.TYPE_11__* %142, i32 %143, i32* %17)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32, i32* %15, align 4
  %147 = mul i32 8, %146
  %148 = call i32 @bits_skip(i32* %3, i32 %147)
  br label %149

149:                                              ; preds = %145, %133
  %150 = load i32, i32* %15, align 4
  %151 = add i32 5, %150
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %4, align 4
  %156 = sub i32 %155, 4
  %157 = icmp uge i32 %154, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %149
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %158, %149
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %104

162:                                              ; preds = %104
  ret i32 1
}

declare dso_local i32 @bits_init(i32*, i32, i32, i32) #1

declare dso_local i8* @bits_get(i32*, i32) #1

declare dso_local i32 @update_ts_streams(%struct.TYPE_11__*, i32, i32, i8 zeroext, i32, i32*) #1

declare dso_local i32 @bits_clone(i32*, i32*, i32) #1

declare dso_local i32 @decode_element_descriptors(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @bits_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
