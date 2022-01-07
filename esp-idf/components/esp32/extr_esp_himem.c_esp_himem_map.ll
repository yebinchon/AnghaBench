; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_map.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i32, i32 }

@CACHE_BLOCKSIZE = common dso_local global i64 0, align 8
@s_ram_descriptor = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Himem not available!\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ram offset not aligned to blocksize\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"range not aligned to blocksize\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"length not aligned to blocksize\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"args not in range of phys ram handle\00", align 1
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"args not in range of range handle\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ram already mapped\00", align 1
@s_range_descriptor = common dso_local global %struct.TYPE_9__* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"range already mapped\00", align 1
@spinlock = common dso_local global i32 0, align 4
@VIRT_HIMEM_RANGE_BLOCKSTART = common dso_local global i64 0, align 8
@PHYS_HIMEM_BLOCKSTART = common dso_local global i64 0, align 8
@VIRT_HIMEM_RANGE_START = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_himem_map(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2, i64 %3, i64 %4, i32 %5, i8** %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %27 = udiv i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %31 = udiv i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_ram_descriptor, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %37 = call i32 @HIMEM_CHECK(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %40 = urem i64 %38, %39
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %44 = call i32 @HIMEM_CHECK(i32 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %47 = urem i64 %45, %46
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %51 = call i32 @HIMEM_CHECK(i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %54 = urem i64 %52, %53
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %58 = call i32 @HIMEM_CHECK(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  %68 = call i32 @HIMEM_CHECK(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  %78 = call i32 @HIMEM_CHECK(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  store i32 0, i32* %18, align 4
  br label %79

79:                                               ; preds = %113, %7
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %116

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_ram_descriptor, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %98 = call i32 @HIMEM_CHECK(i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_range_descriptor, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %112 = call i32 @HIMEM_CHECK(i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %83
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %79

116:                                              ; preds = %79
  %117 = call i32 @portENTER_CRITICAL(i32* @spinlock)
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %177, %116
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %180

122:                                              ; preds = %118
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ramblock_idx_valid(i64 %131)
  %133 = call i32 @assert(i32 %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** @s_ram_descriptor, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %137, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_range_descriptor, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %159, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @s_range_descriptor, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i64 %165, i64* %176, align 8
  br label %177

177:                                              ; preds = %122
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %19, align 4
  br label %118

180:                                              ; preds = %118
  %181 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  store i32 0, i32* %20, align 4
  br label %182

182:                                              ; preds = %211, %180
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = load i64, i64* @VIRT_HIMEM_RANGE_BLOCKSTART, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %187, %191
  %193 = load i32, i32* %20, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %192, %194
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %195, %197
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %15, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %201, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @PHYS_HIMEM_BLOCKSTART, align 8
  %209 = add i64 %207, %208
  %210 = call i32 @set_bank(i64 %198, i64 %209, i32 1)
  br label %211

211:                                              ; preds = %186
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %20, align 4
  br label %182

214:                                              ; preds = %182
  %215 = load i64, i64* @VIRT_HIMEM_RANGE_START, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %11, align 8
  %221 = add i64 %219, %220
  %222 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %223 = mul i64 %221, %222
  %224 = add i64 %215, %223
  %225 = inttoptr i64 %224 to i8*
  %226 = load i8**, i8*** %14, align 8
  store i8* %225, i8** %226, align 8
  %227 = load i32, i32* @ESP_OK, align 4
  ret i32 %227
}

declare dso_local i32 @HIMEM_CHECK(i32, i8*, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ramblock_idx_valid(i64) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @set_bank(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
