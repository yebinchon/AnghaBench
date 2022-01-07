; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_apply_rumble.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_apply_rumble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_cheat = type { i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32 }

@RETRO_RUMBLE_STRONG = common dso_local global i32 0, align 4
@RETRO_RUMBLE_WEAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheat_manager_apply_rumble(%struct.item_cheat* %0, i32 %1) #0 {
  %3 = alloca %struct.item_cheat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.item_cheat* %0, %struct.item_cheat** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %7 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %88 [
    i32 135, label %9
    i32 138, label %10
    i32 134, label %17
    i32 131, label %24
    i32 137, label %31
    i32 133, label %38
    i32 128, label %45
    i32 129, label %52
    i32 132, label %59
    i32 130, label %66
    i32 136, label %77
  ]

9:                                                ; preds = %2
  br label %198

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %13 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  br label %88

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %20 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %5, align 4
  br label %88

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %27 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %25, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  br label %88

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %34 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %5, align 4
  br label %88

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %41 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  br label %88

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %48 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %88

52:                                               ; preds = %2
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %55 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %88

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %62 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ugt i32 %60, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %88

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %69 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %72 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add i32 %70, %73
  %75 = icmp eq i32 %67, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %88

77:                                               ; preds = %2
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %80 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %83 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = sub i32 %81, %84
  %86 = icmp eq i32 %78, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %2, %77, %66, %59, %52, %45, %38, %31, %24, %17, %10
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %91 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %93 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 300
  br i1 %95, label %96, label %135

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %96
  %100 = call i64 (...) @cpu_features_get_time_usec()
  %101 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %102 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = mul nsw i32 %103, 1000
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %100, %105
  %107 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %108 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  %109 = call i64 (...) @cpu_features_get_time_usec()
  %110 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %111 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 1000
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %109, %114
  %116 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %117 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %116, i32 0, i32 6
  store i64 %115, i64* %117, align 8
  %118 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %119 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %122 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %123 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @input_driver_set_rumble_state(i32 %120, i32 %121, i32 %124)
  %126 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %127 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RETRO_RUMBLE_WEAK, align 4
  %130 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %131 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @input_driver_set_rumble_state(i32 %128, i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %99, %96
  br label %140

135:                                              ; preds = %88
  %136 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %137 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %198

140:                                              ; preds = %134
  %141 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %142 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i64 (...) @cpu_features_get_time_usec()
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %148 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %153 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %156 = call i32 @input_driver_set_rumble_state(i32 %154, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %151, %146
  %158 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %159 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %158, i32 0, i32 4
  store i64 0, i64* %159, align 8
  br label %169

160:                                              ; preds = %140
  %161 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %162 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @RETRO_RUMBLE_STRONG, align 4
  %165 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %166 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @input_driver_set_rumble_state(i32 %163, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %160, %157
  %170 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %171 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = call i64 (...) @cpu_features_get_time_usec()
  %174 = icmp sle i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %177 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %182 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @RETRO_RUMBLE_WEAK, align 4
  %185 = call i32 @input_driver_set_rumble_state(i32 %183, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %180, %175
  %187 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %188 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %187, i32 0, i32 6
  store i64 0, i64* %188, align 8
  br label %198

189:                                              ; preds = %169
  %190 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %191 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @RETRO_RUMBLE_WEAK, align 4
  %194 = load %struct.item_cheat*, %struct.item_cheat** %3, align 8
  %195 = getelementptr inbounds %struct.item_cheat, %struct.item_cheat* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @input_driver_set_rumble_state(i32 %192, i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %9, %135, %189, %186
  ret void
}

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @input_driver_set_rumble_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
