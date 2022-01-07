; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_process_frame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decomb.c_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_16__**, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@MODE_DECOMB_SELECTIVE = common dso_local global i32 0, align 4
@HB_COMB_NONE = common dso_local global i64 0, align 8
@PIC_FLAG_TOP_FIELD_FIRST = common dso_local global i32 0, align 4
@MODE_DECOMB_BOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_frame(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MODE_DECOMB_SELECTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %20, i64 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HB_COMB_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %17
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %31, i64 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = call %struct.TYPE_22__* @hb_buffer_dup(%struct.TYPE_16__* %33)
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %3, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = call i32 @hb_buffer_list_append(i32* %36, %struct.TYPE_22__* %37)
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %212

47:                                               ; preds = %17, %1
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %55, i64 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PIC_FLAG_TOP_FIELD_FIRST, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %47
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1
  %72 = xor i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %52
  store i32 1, i32* %6, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MODE_DECOMB_BOB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 2, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %73
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %169, %81
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %172

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %4, align 4
  %89 = xor i32 %87, %88
  %90 = xor i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %99, i64 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %107, i64 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %115, i64 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call %struct.TYPE_22__* @hb_frame_buffer_init(i32 %104, i32 %112, i32 %120)
  store %struct.TYPE_22__* %121, %struct.TYPE_22__** %7, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  store i32 %132, i32* %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @yadif_filter(%struct.TYPE_21__* %150, %struct.TYPE_22__* %151, i32 %152, i32 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %159, i64 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_20__* %156 to i8*
  %164 = bitcast %struct.TYPE_20__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 40, i1 false)
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %168 = call i32 @hb_buffer_list_append(i32* %166, %struct.TYPE_22__* %167)
  br label %169

169:                                              ; preds = %86
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %82

172:                                              ; preds = %82
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MODE_DECOMB_BOB, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %172
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 3
  %182 = call %struct.TYPE_22__* @hb_buffer_list_head(i32* %181)
  store %struct.TYPE_22__* %182, %struct.TYPE_22__** %9, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 3
  %185 = call %struct.TYPE_22__* @hb_buffer_list_tail(i32* %184)
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %10, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %189, %193
  %195 = sdiv i64 %194, 2
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %199, %195
  store i64 %200, i64* %198, align 8
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 3
  store i64 %204, i64* %207, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 4
  store i64 0, i64* %210, align 8
  br label %211

211:                                              ; preds = %179, %172
  br label %212

212:                                              ; preds = %211, %28
  ret void
}

declare dso_local %struct.TYPE_22__* @hb_buffer_dup(%struct.TYPE_16__*) #1

declare dso_local i32 @hb_buffer_list_append(i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @yadif_filter(%struct.TYPE_21__*, %struct.TYPE_22__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_22__* @hb_buffer_list_head(i32*) #1

declare dso_local %struct.TYPE_22__* @hb_buffer_list_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
