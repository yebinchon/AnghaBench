; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_needToLoadDataBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_needToLoadDataBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i8*, i8*)* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i32, i32 }

@TSDB_DATA_TYPE_FLOAT = common dso_local global i64 0, align 8
@TSDB_FUNC_TOP = common dso_local global i64 0, align 8
@TSDB_FUNC_BOTTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @needToLoadDataBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needToLoadDataBlock(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = icmp eq %struct.TYPE_18__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %199

20:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %152, %20
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %155

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i64 %31
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %9, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39, %27
  br label %152

52:                                               ; preds = %39
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @vnodeSupportPrefilter(i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %152

61:                                               ; preds = %52
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_DATA_TYPE_FLOAT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %61
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = bitcast i32* %73 to double*
  %75 = load double, double* %74, align 4
  %76 = fptrunc double %75 to float
  store float %76, float* %11, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = bitcast i32* %80 to double*
  %82 = load double, double* %81, align 8
  %83 = fptrunc double %82 to float
  store float %83, float* %12, align 4
  store i64 0, i64* %13, align 8
  br label %84

84:                                               ; preds = %109, %69
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %85, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %84
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_19__*, i8*, i8*)*, i64 (%struct.TYPE_19__*, i8*, i8*)** %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %101
  %103 = bitcast float* %11 to i8*
  %104 = bitcast float* %12 to i8*
  %105 = call i64 %97(%struct.TYPE_19__* %102, i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  store i32 1, i32* %4, align 4
  br label %199

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %13, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %13, align 8
  br label %84

112:                                              ; preds = %84
  br label %151

113:                                              ; preds = %61
  store i64 0, i64* %14, align 8
  br label %114

114:                                              ; preds = %147, %113
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ult i64 %115, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %114
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64 (%struct.TYPE_19__*, i8*, i8*)*, i64 (%struct.TYPE_19__*, i8*, i8*)** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i64 %131
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = bitcast i32* %136 to i8*
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = bitcast i32* %141 to i8*
  %143 = call i64 %127(%struct.TYPE_19__* %132, i8* %137, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %120
  store i32 1, i32* %4, align 4
  br label %199

146:                                              ; preds = %120
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %14, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %14, align 8
  br label %114

150:                                              ; preds = %114
  br label %151

151:                                              ; preds = %150, %112
  br label %152

152:                                              ; preds = %151, %60, %51
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  br label %21

155:                                              ; preds = %21
  store i64 0, i64* %15, align 8
  br label %156

156:                                              ; preds = %195, %155
  %157 = load i64, i64* %15, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %157, %160
  br i1 %161, label %162, label %198

162:                                              ; preds = %156
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = load i64, i64* %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %16, align 8
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %162
  %175 = load i64, i64* %16, align 8
  %176 = load i64, i64* @TSDB_FUNC_BOTTOM, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %174, %162
  %179 = load i32*, i32** %7, align 8
  %180 = load i64, i64* %15, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i64, i64* %16, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %184 = load i64, i64* %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 2
  %187 = bitcast i32* %186 to i8*
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = load i64, i64* %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = bitcast i32* %191 to i8*
  %193 = call i32 @top_bot_datablock_filter(i32* %181, i64 %182, i8* %187, i8* %192)
  store i32 %193, i32* %4, align 4
  br label %199

194:                                              ; preds = %174
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %15, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %15, align 8
  br label %156

198:                                              ; preds = %156
  store i32 1, i32* %4, align 4
  br label %199

199:                                              ; preds = %198, %178, %145, %107, %19
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @vnodeSupportPrefilter(i64) #1

declare dso_local i32 @top_bot_datablock_filter(i32*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
