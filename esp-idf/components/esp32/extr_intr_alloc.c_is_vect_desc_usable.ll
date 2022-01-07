; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_is_vect_desc_usable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_intr_alloc.c_is_vect_desc_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@int_desc = common dso_local global %struct.TYPE_5__* null, align 8
@INTDESC_RESVD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"....Unusable: reserved\00", align 1
@INTDESC_SPECIAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"....Unusable: special-purpose int\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"....Unusable: incompatible level\00", align 1
@ESP_INTR_FLAG_EDGE = common dso_local global i32 0, align 4
@INTTP_LEVEL = common dso_local global i64 0, align 8
@INTTP_EDGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"....Unusable: incompatible trigger type\00", align 1
@VECDESC_FL_RESERVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"....Unusable: reserved at runtime.\00", align 1
@VECDESC_FL_SHARED = common dso_local global i32 0, align 4
@VECDESC_FL_NONSHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"....Unusable: already in (non-shared) use.\00", align 1
@ESP_INTR_FLAG_SHARED = common dso_local global i32 0, align 4
@ESP_INTR_FLAG_IRAM = common dso_local global i32 0, align 4
@VECDESC_FL_INIRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"....Unusable: shared but iram prop doesn't match\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"...Unusable: int is shared, we need non-shared.\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"....Unusable: already allocated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @is_vect_desc_usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_vect_desc_usable(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @int_desc, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INTDESC_RESVD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = call i32 @ALCHLOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @int_desc, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INTDESC_SPECIAL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @ALCHLOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

48:                                               ; preds = %43, %30
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @int_desc, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = and i32 %49, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %48
  %60 = call i32 @ALCHLOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ESP_INTR_FLAG_EDGE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @int_desc, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INTTP_LEVEL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %66, %61
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @ESP_INTR_FLAG_EDGE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @int_desc, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @INTTP_EDGE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80, %66
  %90 = call i32 @ALCHLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

91:                                               ; preds = %80, %75
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VECDESC_FL_RESERVED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 @ALCHLOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @VECDESC_FL_SHARED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VECDESC_FL_NONSHARED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %107, %100
  %115 = phi i1 [ false, %100 ], [ %113, %107 ]
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @VECDESC_FL_NONSHARED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = call i32 @ALCHLOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

127:                                              ; preds = %114
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @VECDESC_FL_SHARED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %127
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @ESP_INTR_FLAG_SHARED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @ESP_INTR_FLAG_IRAM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @VECDESC_FL_INIRAM, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %12, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @VECDESC_FL_SHARED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %139
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 @ALCHLOG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

164:                                              ; preds = %158, %139
  br label %167

165:                                              ; preds = %134
  %166 = call i32 @ALCHLOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

167:                                              ; preds = %164
  br label %176

168:                                              ; preds = %127
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i64 @int_has_handler(i32 %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @ALCHLOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %177

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %167
  store i32 1, i32* %5, align 4
  br label %177

177:                                              ; preds = %176, %173, %165, %162, %125, %98, %89, %59, %46, %28
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @ALCHLOG(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @int_has_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
