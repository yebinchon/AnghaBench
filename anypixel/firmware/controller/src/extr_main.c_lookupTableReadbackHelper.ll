; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_lookupTableReadbackHelper.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_lookupTableReadbackHelper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PKT_TYPE_GET_LOOKUP = common dso_local global i32 0, align 4
@usarts = common dso_local global i32* null, align 8
@LED_PACKET_LEN = common dso_local global i32 0, align 4
@panelLEDmap = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32)* @lookupTableReadbackHelper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookupTableReadbackHelper(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 8
  %19 = alloca [512 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @PKT_TYPE_GET_LOOKUP, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* %11, align 4
  switch i32 %28, label %33 [
    i32 130, label %29
    i32 131, label %30
    i32 128, label %31
    i32 129, label %32
  ]

29:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %33

30:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  store i32 7, i32* %14, align 4
  br label %33

31:                                               ; preds = %5
  store i32 7, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %33

32:                                               ; preds = %5
  store i32 7, i32* %13, align 4
  store i32 7, i32* %14, align 4
  br label %33

33:                                               ; preds = %5, %32, %31, %30, %29
  br label %34

34:                                               ; preds = %33, %82
  %35 = load i32*, i32** @usarts, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @UART_SendBytes(i32* %38, i8* %41, i32 24)
  %43 = call i32 @Delay(i32 20)
  %44 = load i32*, i32** @usarts, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @UART_RX_frame_available(i32* %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @LED_PACKET_LEN, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %34
  %53 = load i32*, i32** @usarts, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @UART_RX_read(i32* %56, i8* %58, i32 %59)
  br label %83

61:                                               ; preds = %34
  %62 = load i32, i32* %17, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i32, i32* %17, align 4
  %66 = icmp sgt i32 %65, 512
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 512, i32* %17, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32*, i32** @usarts, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %19, i64 0, i64 0
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @UART_RX_read(i32* %72, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %61
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = icmp sgt i32 %77, 3
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %176

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  br label %34

83:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %172, %83
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 7
  br i1 %86, label %87, label %175

87:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %168, %87
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 7
  br i1 %90, label %91, label %171

91:                                               ; preds = %88
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  %96 = mul nsw i32 %95, 14
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = mul nsw i32 %100, 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @panelLEDmap, align 8
  %106 = load i32, i32* %15, align 4
  %107 = mul nsw i32 %106, 7
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %107, %108
  %110 = mul nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @unpack12bit(i32 %104, i32 %113)
  %115 = call i32 @pack12bit(i32* %92, i32 %101, i32 %114)
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %117, %118
  %120 = mul nsw i32 %119, 14
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  %125 = mul nsw i32 %124, 3
  %126 = add nsw i32 %125, 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** @panelLEDmap, align 8
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %131, 7
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %132, %133
  %135 = mul nsw i32 %134, 3
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %130, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @unpack12bit(i32 %129, i32 %139)
  %141 = call i32 @pack12bit(i32* %116, i32 %126, i32 %140)
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = mul nsw i32 %145, 14
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %147, %148
  %150 = add nsw i32 %146, %149
  %151 = mul nsw i32 %150, 3
  %152 = add nsw i32 %151, 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** @panelLEDmap, align 8
  %157 = load i32, i32* %15, align 4
  %158 = mul nsw i32 %157, 7
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %158, %159
  %161 = mul nsw i32 %160, 3
  %162 = add nsw i32 %161, 2
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %156, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @unpack12bit(i32 %155, i32 %165)
  %167 = call i32 @pack12bit(i32* %142, i32 %152, i32 %166)
  br label %168

168:                                              ; preds = %91
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %16, align 4
  br label %88

171:                                              ; preds = %88
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %84

175:                                              ; preds = %84
  store i32 1, i32* %6, align 4
  br label %176

176:                                              ; preds = %175, %80
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @UART_SendBytes(i32*, i8*, i32) #1

declare dso_local i32 @Delay(i32) #1

declare dso_local i32 @UART_RX_frame_available(i32*) #1

declare dso_local i32 @UART_RX_read(i32*, i8*, i32) #1

declare dso_local i32 @pack12bit(i32*, i32, i32) #1

declare dso_local i32 @unpack12bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
