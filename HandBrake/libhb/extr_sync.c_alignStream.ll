; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_alignStream.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_sync.c_alignStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i64, i64, i32 }

@SYNC_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@SYNC_TYPE_AUDIO = common dso_local global i64 0, align 8
@HB_ACODEC_PASS_FLAG = common dso_local global i32 0, align 4
@SYNC_TYPE_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*, i64)* @alignStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alignStream(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @hb_list_count(i32 %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SYNC_TYPE_SUBTITLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %3
  br label %190

27:                                               ; preds = %20
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_26__* @hb_list_item(i32 %30, i32 0)
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %7, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %190

41:                                               ; preds = %27
  %42 = load i64, i64* %8, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %93, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i64 %56
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %10, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %60 = icmp eq %struct.TYPE_24__* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %93

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %91, %62
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @hb_list_count(i32 %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_26__* @hb_list_item(i32 %72, i32 0)
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %7, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %69
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = call i32 @hb_list_rem(i32 %83, %struct.TYPE_26__* %84)
  %86 = call i32 @hb_buffer_close(%struct.TYPE_26__** %7)
  br label %91

87:                                               ; preds = %69
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %90 = load i64, i64* %6, align 8
  call void @alignStream(%struct.TYPE_25__* %88, %struct.TYPE_24__* %89, i64 %90)
  br label %92

91:                                               ; preds = %80
  br label %63

92:                                               ; preds = %87, %63
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %45

96:                                               ; preds = %45
  br label %190

97:                                               ; preds = %41
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SYNC_TYPE_AUDIO, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HB_ACODEC_PASS_FLAG, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %103
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call %struct.TYPE_26__* @CreateSilenceBuf(%struct.TYPE_24__* %116, i64 %117, i64 %118)
  store %struct.TYPE_26__* %119, %struct.TYPE_26__** %11, align 8
  br label %120

120:                                              ; preds = %115, %103
  br label %133

121:                                              ; preds = %97
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call %struct.TYPE_26__* @CreateBlackBuf(%struct.TYPE_24__* %128, i64 %129, i64 %130)
  store %struct.TYPE_26__* %131, %struct.TYPE_26__** %11, align 8
  br label %132

132:                                              ; preds = %127, %121
  br label %133

133:                                              ; preds = %132, %120
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %154, %133
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = icmp ne %struct.TYPE_26__* %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %12, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %13, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %147, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %153 = call i32 @hb_list_insert(i32 %150, i32 %151, %struct.TYPE_26__* %152)
  br label %154

154:                                              ; preds = %138
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %155, %struct.TYPE_26__** %11, align 8
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  br label %135

158:                                              ; preds = %135
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SYNC_TYPE_VIDEO, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %158
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %165, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = sub nsw i64 %175, %176
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %177
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  br label %189

189:                                              ; preds = %171, %164, %158
  br label %190

190:                                              ; preds = %26, %40, %189, %96
  ret void
}

declare dso_local i64 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_26__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_26__**) #1

declare dso_local %struct.TYPE_26__* @CreateSilenceBuf(%struct.TYPE_24__*, i64, i64) #1

declare dso_local %struct.TYPE_26__* @CreateBlackBuf(%struct.TYPE_24__*, i64, i64) #1

declare dso_local i32 @hb_list_insert(i32, i32, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
