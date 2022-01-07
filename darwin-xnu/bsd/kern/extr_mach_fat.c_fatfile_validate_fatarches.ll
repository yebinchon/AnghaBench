; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_fat.c_fatfile_validate_fatarches.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_fat.c_fatfile_validate_fatarches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_arch = type { i32, i32, i32, i32 }
%struct.fat_header = type { i32, i32 }

@LOAD_FAILURE = common dso_local global i32 0, align 4
@FAT_MAGIC = common dso_local global i64 0, align 8
@LOAD_BADMACHO = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@LOAD_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fatfile_validate_fatarches(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fat_arch*, align 8
  %13 = alloca %struct.fat_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 8, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %189

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = inttoptr i64 %30 to %struct.fat_header*
  store %struct.fat_header* %31, %struct.fat_header** %13, align 8
  %32 = load %struct.fat_header*, %struct.fat_header** %13, align 8
  %33 = getelementptr inbounds %struct.fat_header, %struct.fat_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @OSSwapBigToHostInt32(i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.fat_header*, %struct.fat_header** %13, align 8
  %37 = getelementptr inbounds %struct.fat_header, %struct.fat_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @OSSwapBigToHostInt32(i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @FAT_MAGIC, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %44, i32* %3, align 4
  br label %189

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %47, 8
  %49 = udiv i64 %48, 16
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %54, i32* %3, align 4
  br label %189

55:                                               ; preds = %45
  %56 = load i64, i64* %7, align 8
  %57 = mul i64 %56, 16
  %58 = add i64 8, %57
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %60 to %struct.fat_arch*
  store %struct.fat_arch* %61, %struct.fat_arch** %12, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %184, %55
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %187

66:                                               ; preds = %62
  %67 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %67, i64 %68
  %70 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @OSSwapBigToHostInt32(i32 %71)
  store i64 %72, i64* %14, align 8
  %73 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %73, i64 %74
  %76 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @OSSwapBigToHostInt32(i32 %77)
  store i64 %78, i64* %15, align 8
  %79 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %79, i64 %80
  %82 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @OSSwapBigToHostInt32(i32 %83)
  store i64 %84, i64* %16, align 8
  %85 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %85, i64 %86
  %88 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @OSSwapBigToHostInt32(i32 %89)
  store i64 %90, i64* %17, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %66
  %95 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %95, i32* %3, align 4
  br label %189

96:                                               ; preds = %66
  %97 = load i64, i64* @UINT32_MAX, align 8
  %98 = load i64, i64* %15, align 8
  %99 = sub nsw i64 %97, %98
  %100 = load i64, i64* %14, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %103, i32* %3, align 4
  br label %189

104:                                              ; preds = %96
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = add nsw i64 %105, %106
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %110

110:                                              ; preds = %180, %104
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %183

114:                                              ; preds = %110
  %115 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %115, i64 %116
  %118 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @OSSwapBigToHostInt32(i32 %119)
  store i64 %120, i64* %19, align 8
  %121 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %121, i64 %122
  %124 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @OSSwapBigToHostInt32(i32 %125)
  store i64 %126, i64* %20, align 8
  %127 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %127, i64 %128
  %130 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @OSSwapBigToHostInt32(i32 %131)
  store i64 %132, i64* %21, align 8
  %133 = load %struct.fat_arch*, %struct.fat_arch** %12, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %133, i64 %134
  %136 = getelementptr inbounds %struct.fat_arch, %struct.fat_arch* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @OSSwapBigToHostInt32(i32 %137)
  store i64 %138, i64* %22, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %21, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %114
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %22, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %147, i32* %3, align 4
  br label %189

148:                                              ; preds = %142, %114
  %149 = load i64, i64* @UINT32_MAX, align 8
  %150 = load i64, i64* %20, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* %19, align 8
  %153 = icmp slt i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %155, i32* %3, align 4
  br label %189

156:                                              ; preds = %148
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %20, align 8
  %159 = add nsw i64 %157, %158
  store i64 %159, i64* %23, align 8
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %19, align 8
  %162 = icmp sle i64 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load i64, i64* %18, align 8
  %165 = load i64, i64* %19, align 8
  %166 = icmp sle i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %169, i32* %3, align 4
  br label %189

170:                                              ; preds = %167
  br label %179

171:                                              ; preds = %156
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %23, align 8
  %174 = icmp sge i64 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %177, i32* %3, align 4
  br label %189

178:                                              ; preds = %175
  br label %179

179:                                              ; preds = %178, %170
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %10, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %10, align 8
  br label %110

183:                                              ; preds = %110
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %9, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %9, align 8
  br label %62

187:                                              ; preds = %62
  %188 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %187, %176, %168, %154, %146, %102, %94, %53, %43, %27
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i64 @OSSwapBigToHostInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
