; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_mp_div.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_libtommath.h_mp_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32 }

@MP_VAL = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@MP_OKAY = common dso_local global i32 0, align 4
@MP_GT = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i32 0, align 4
@MP_NEG = common dso_local global i32 0, align 4
@MP_YES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*)* @mp_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_div(%struct.TYPE_38__* %0, %struct.TYPE_38__* %1, %struct.TYPE_38__* %2, %struct.TYPE_38__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_38__*, align 8
  %8 = alloca %struct.TYPE_38__*, align 8
  %9 = alloca %struct.TYPE_38__*, align 8
  %10 = alloca %struct.TYPE_38__, align 4
  %11 = alloca %struct.TYPE_38__, align 4
  %12 = alloca %struct.TYPE_38__, align 4
  %13 = alloca %struct.TYPE_38__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %7, align 8
  store %struct.TYPE_38__* %2, %struct.TYPE_38__** %8, align 8
  store %struct.TYPE_38__* %3, %struct.TYPE_38__** %9, align 8
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %18 = call i32 @mp_iszero(%struct.TYPE_38__* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MP_VAL, align 4
  store i32 %21, i32* %5, align 4
  br label %164

22:                                               ; preds = %4
  %23 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %24 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %25 = call i64 @mp_cmp_mag(%struct.TYPE_38__* %23, %struct.TYPE_38__* %24)
  %26 = load i64, i64* @MP_LT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %30 = icmp ne %struct.TYPE_38__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %34 = call i32 @mp_copy(%struct.TYPE_38__* %32, %struct.TYPE_38__* %33)
  store i32 %34, i32* %14, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @MP_OKAY, align 4
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %39 = icmp ne %struct.TYPE_38__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %42 = call i32 @mp_zero(%struct.TYPE_38__* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %5, align 4
  br label %164

45:                                               ; preds = %22
  %46 = call i32 @mp_init_multi(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  %47 = load i32, i32* @MP_OKAY, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %14, align 4
  br i1 %48, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %5, align 4
  br label %164

52:                                               ; preds = %45
  %53 = call i32 @mp_set(%struct.TYPE_38__* %12, i32 1)
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %55 = call i32 @mp_count_bits(%struct.TYPE_38__* %54)
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %57 = call i32 @mp_count_bits(%struct.TYPE_38__* %56)
  %58 = sub nsw i32 %55, %57
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %60 = call i32 @mp_abs(%struct.TYPE_38__* %59, %struct.TYPE_38__* %10)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* @MP_OKAY, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %52
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %65 = call i32 @mp_abs(%struct.TYPE_38__* %64, %struct.TYPE_38__* %11)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* @MP_OKAY, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @mp_mul_2d(%struct.TYPE_38__* %11, i32 %69, %struct.TYPE_38__* %11)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @MP_OKAY, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @mp_mul_2d(%struct.TYPE_38__* %12, i32 %74, %struct.TYPE_38__* %12)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @MP_OKAY, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73, %68, %63, %52
  br label %161

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %107, %79
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %15, align 4
  %83 = icmp sge i32 %81, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = call i64 @mp_cmp(%struct.TYPE_38__* %11, %struct.TYPE_38__* %10)
  %86 = load i64, i64* @MP_GT, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = call i32 @mp_sub(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %10)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @MP_OKAY, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = call i32 @mp_add(%struct.TYPE_38__* %13, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* @MP_OKAY, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88
  br label %161

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %84
  %99 = call i32 @mp_div_2d(%struct.TYPE_38__* %11, i32 1, %struct.TYPE_38__* %11, i32* null)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @MP_OKAY, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = call i32 @mp_div_2d(%struct.TYPE_38__* %12, i32 1, %struct.TYPE_38__* %12, i32* null)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* @MP_OKAY, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98
  br label %161

107:                                              ; preds = %102
  br label %80

108:                                              ; preds = %80
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %15, align 4
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %108
  %120 = load i32, i32* @MP_ZPOS, align 4
  br label %123

121:                                              ; preds = %108
  %122 = load i32, i32* @MP_NEG, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %16, align 4
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %126 = icmp ne %struct.TYPE_38__* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %129 = call i32 @mp_exch(%struct.TYPE_38__* %128, %struct.TYPE_38__* %13)
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %131 = call i32 @mp_iszero(%struct.TYPE_38__* %130)
  %132 = load i32, i32* @MP_YES, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @MP_ZPOS, align 4
  br label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %16, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %123
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %144 = icmp ne %struct.TYPE_38__* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %147 = call i32 @mp_exch(%struct.TYPE_38__* %146, %struct.TYPE_38__* %10)
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %149 = call i32 @mp_iszero(%struct.TYPE_38__* %148)
  %150 = load i32, i32* @MP_YES, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @MP_ZPOS, align 4
  br label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load %struct.TYPE_38__*, %struct.TYPE_38__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %142
  br label %161

161:                                              ; preds = %160, %106, %96, %78
  %162 = call i32 @mp_clear_multi(%struct.TYPE_38__* %10, %struct.TYPE_38__* %11, %struct.TYPE_38__* %12, %struct.TYPE_38__* %13, i32* null)
  %163 = load i32, i32* %14, align 4
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %161, %50, %43, %20
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i32 @mp_iszero(%struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp_mag(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_copy(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_zero(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_init_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @mp_set(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @mp_count_bits(%struct.TYPE_38__*) #1

declare dso_local i32 @mp_abs(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_mul_2d(%struct.TYPE_38__*, i32, %struct.TYPE_38__*) #1

declare dso_local i64 @mp_cmp(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_add(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_div_2d(%struct.TYPE_38__*, i32, %struct.TYPE_38__*, i32*) #1

declare dso_local i32 @mp_exch(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @mp_clear_multi(%struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, %struct.TYPE_38__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
