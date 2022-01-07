; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_DMATransfer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_DMATransfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CurrentSH2 = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DMATransfer(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %185, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 12288
  switch i32 %23, label %27 [
    i32 0, label %24
    i32 4096, label %25
    i32 8192, label %26
  ]

24:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %28

25:                                               ; preds = %20
  store i32 1, i32* %14, align 4
  br label %28

26:                                               ; preds = %20
  store i32 -1, i32* %14, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 49152
  switch i32 %31, label %35 [
    i32 0, label %32
    i32 16384, label %33
    i32 32768, label %34
  ]

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %36

33:                                               ; preds = %28
  store i32 1, i32* %15, align 4
  br label %36

34:                                               ; preds = %28
  store i32 -1, i32* %15, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 3072
  %40 = ashr i32 %39, 10
  store i32 %40, i32* %11, align 4
  switch i32 %40, label %165 [
    i32 0, label %41
    i32 1, label %67
    i32 2, label %97
    i32 3, label %127
  ]

41:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MappedMemoryReadByte(i32 %51)
  %53 = call i32 @MappedMemoryWriteByte(i32 %49, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  br label %165

67:                                               ; preds = %36
  %68 = load i32, i32* %15, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %92, %67
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @MappedMemoryReadWord(i32 %81)
  %83 = call i32 @MappedMemoryWriteWord(i32 %79, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %72

95:                                               ; preds = %72
  %96 = load i32*, i32** %9, align 8
  store i32 0, i32* %96, align 4
  br label %165

97:                                               ; preds = %36
  %98 = load i32, i32* %15, align 4
  %99 = mul nsw i32 %98, 4
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 %100, 4
  store i32 %101, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %122, %97
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %102
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @MappedMemoryReadLong(i32 %111)
  %113 = call i32 @MappedMemoryWriteLong(i32 %109, i32 %112)
  %114 = load i32, i32* %15, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %107
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %102

125:                                              ; preds = %102
  %126 = load i32*, i32** %9, align 8
  store i32 0, i32* %126, align 4
  br label %165

127:                                              ; preds = %36
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %128, 4
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %130, 4
  store i32 %131, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %160, %127
  %133 = load i32, i32* %12, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %132
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %156, %137
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @MappedMemoryReadLong(i32 %145)
  %147 = call i32 @MappedMemoryWriteLong(i32 %143, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %148
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %152
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %141
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %138

159:                                              ; preds = %138
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 4
  store i32 %162, i32* %12, align 4
  br label %132

163:                                              ; preds = %132
  %164 = load i32*, i32** %9, align 8
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %36, %163, %125, %95, %65
  %166 = load i32, i32* %15, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  br label %178

171:                                              ; preds = %165
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %15, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sub nsw i32 %173, %176
  br label %178

178:                                              ; preds = %171, %168
  %179 = phi i32 [ %170, %168 ], [ %177, %171 ]
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i32 @abs(i32 %181) #3
  %183 = mul nsw i32 %180, %182
  %184 = call i32 @SH2WriteNotify(i32 %179, i32 %183)
  br label %185

185:                                              ; preds = %178, %5
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentSH2, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CurrentSH2, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 3840
  %199 = ashr i32 %198, 8
  %200 = call i32 @SH2SendInterrupt(%struct.TYPE_5__* %191, i32 %193, i32 %199)
  br label %201

201:                                              ; preds = %190, %185
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, 2
  store i32 %204, i32* %202, align 4
  ret void
}

declare dso_local i32 @MappedMemoryWriteByte(i32, i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @MappedMemoryWriteWord(i32, i32) #1

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @SH2WriteNotify(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @SH2SendInterrupt(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
