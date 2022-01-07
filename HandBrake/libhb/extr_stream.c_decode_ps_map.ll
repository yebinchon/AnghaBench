; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_ps_map.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_decode_ps_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @decode_ps_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ps_map(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bits_init(i32* %9, i32* %21, i32 %22, i32 0)
  %24 = call i32 @bits_bytes_left(i32* %9)
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = call i32 @bits_skip(i32* %9, i32 64)
  %29 = call i8* @bits_get(i32* %9, i32 16)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = call i32 @bits_bytes_left(i32* %9)
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %146

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @bits_clone(i32* %11, i32* %9, i32 %39)
  br label %41

41:                                               ; preds = %71, %38
  %42 = call i32 @bits_bytes_left(i32* %11)
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = call i8* @bits_get(i32* %11, i32 8)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = call i8* @bits_get(i32* %11, i32 8)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = call i32 @bits_bytes_left(i32* %11)
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %146

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %13, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = call i8* @bits_get(i32* %11, i32 32)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 4
  %65 = mul nsw i32 8, %64
  %66 = call i32 @bits_skip(i32* %11, i32 %65)
  br label %71

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %13, align 4
  %69 = mul nsw i32 8, %68
  %70 = call i32 @bits_skip(i32* %11, i32 %69)
  br label %71

71:                                               ; preds = %67, %59
  br label %41

72:                                               ; preds = %41
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 8, %73
  %75 = call i32 @bits_skip(i32* %9, i32 %74)
  br label %76

76:                                               ; preds = %72, %35
  %77 = call i8* @bits_get(i32* %9, i32 16)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = call i32 @bits_bytes_left(i32* %9)
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %146

83:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %141, %83
  %85 = call i32 @bits_bytes_left(i32* %9)
  %86 = icmp sge i32 %85, 8
  br i1 %86, label %87, label %144

87:                                               ; preds = %84
  %88 = call i8* @bits_get(i32* %9, i32 8)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = call i8* @bits_get(i32* %9, i32 8)
  %91 = ptrtoint i8* %90 to i32
  store i32 %91, i32* %18, align 4
  %92 = call i8* @bits_get(i32* %9, i32 16)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @bits_bytes_left(i32* %9)
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %146

98:                                               ; preds = %87
  store i32 0, i32* %19, align 4
  %99 = load i32, i32* %17, align 4
  switch i32 %99, label %106 [
    i32 129, label %100
    i32 130, label %100
    i32 131, label %100
    i32 135, label %100
  ]

100:                                              ; preds = %98, %98, %98, %98
  %101 = load i32, i32* %18, align 4
  %102 = icmp slt i32 %101, 185
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %19, align 4
  store i32 189, i32* %18, align 4
  br label %105

105:                                              ; preds = %103, %100
  br label %107

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %105
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @update_ps_streams(%struct.TYPE_9__* %108, i32 %109, i32 %110, i32 %111, i32 -1)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %107
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 %116, i32* %124, align 4
  br label %125

125:                                              ; preds = %115, %107
  %126 = load i32, i32* %10, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @bits_clone(i32* %20, i32* %9, i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @decode_element_descriptors(%struct.TYPE_9__* %134, i32 %135, i32* %20)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 8, %138
  %140 = call i32 @bits_skip(i32* %9, i32 %139)
  br label %141

141:                                              ; preds = %137, %125
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %15, align 4
  br label %84

144:                                              ; preds = %84
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %97, %82, %52, %34, %26
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @bits_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @bits_bytes_left(i32*) #1

declare dso_local i32 @bits_skip(i32*, i32) #1

declare dso_local i8* @bits_get(i32*, i32) #1

declare dso_local i32 @bits_clone(i32*, i32*, i32) #1

declare dso_local i32 @update_ps_streams(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @decode_element_descriptors(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
