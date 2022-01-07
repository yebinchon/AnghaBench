; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BupGetSaveList.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_bios.c_BupGetSaveList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @BupGetSaveList(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GetDeviceStats(i32 %15, i32* %7, i32* %8, i32* %9)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @CheckHeader(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %225

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 2, %26
  %28 = shl i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %46, %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 1
  %39 = call i32 @MappedMemoryReadByte(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  br label %29

51:                                               ; preds = %29
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 80
  %55 = trunc i64 %54 to i32
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %10, align 8
  %58 = icmp eq %struct.TYPE_3__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  store i32 0, i32* %60, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %3, align 8
  br label %225

61:                                               ; preds = %51
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 2, %64
  %66 = shl i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %218, %61
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 1
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %223

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = call i32 @MappedMemoryReadByte(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %217

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %103, %80
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 11
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 9
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %89, %91
  %93 = call i32 @MappedMemoryReadByte(i32 %92)
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %93, i32* %102, align 4
  br label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 11
  store i32 0, i32* %113, align 4
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %133, %106
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %115, 10
  br i1 %116, label %117, label %136

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 33
  %120 = load i32, i32* %13, align 4
  %121 = mul nsw i32 %120, 2
  %122 = add nsw i32 %119, %121
  %123 = call i32 @MappedMemoryReadByte(i32 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %123, i32* %132, align 4
  br label %133

133:                                              ; preds = %117
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  br label %114

136:                                              ; preds = %114
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 10
  store i32 0, i32* %143, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 31
  %146 = call i32 @MappedMemoryReadByte(i32 %145)
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store i32 %146, i32* %151, align 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 10
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 9
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 8
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 7
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 61
  %184 = call i32 @MappedMemoryReadByte(i32 %183)
  %185 = shl i32 %184, 24
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 63
  %188 = call i32 @MappedMemoryReadByte(i32 %187)
  %189 = shl i32 %188, 16
  %190 = or i32 %185, %189
  %191 = load i32, i32* %14, align 4
  %192 = add nsw i32 %191, 65
  %193 = call i32 @MappedMemoryReadByte(i32 %192)
  %194 = shl i32 %193, 8
  %195 = or i32 %190, %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 67
  %198 = call i32 @MappedMemoryReadByte(i32 %197)
  %199 = or i32 %195, %198
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  store i32 %199, i32* %204, align 4
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 69
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @CalcSaveSize(i32 %206, i32 %207)
  %209 = add nsw i64 %208, 1
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 4
  store i64 %209, i64* %214, align 8
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %136, %72
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = shl i32 %219, 1
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %12, align 4
  br label %67

223:                                              ; preds = %67
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %224, %struct.TYPE_3__** %3, align 8
  br label %225

225:                                              ; preds = %223, %59, %23
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  ret %struct.TYPE_3__* %226
}

declare dso_local i32 @GetDeviceStats(i32, i32*, i32*, i32*) #1

declare dso_local i64 @CheckHeader(i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @CalcSaveSize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
