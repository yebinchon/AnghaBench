; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_11__ = type { i8* }

@PROCESSOR_SET_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@PROCESSOR_SET_BASIC_INFO = common dso_local global i32 0, align 4
@PROCESSOR_SET_BASIC_INFO_COUNT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@processor_avail_count = common dso_local global i32 0, align 4
@POLICY_TIMESHARE = common dso_local global i32 0, align 4
@realhost = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PROCESSOR_SET_TIMESHARE_DEFAULT = common dso_local global i32 0, align 4
@POLICY_TIMESHARE_BASE_COUNT = common dso_local global i64 0, align 8
@BASEPRI_DEFAULT = common dso_local global i8* null, align 8
@PROCESSOR_SET_FIFO_DEFAULT = common dso_local global i32 0, align 4
@POLICY_FIFO_BASE_COUNT = common dso_local global i64 0, align 8
@PROCESSOR_SET_RR_DEFAULT = common dso_local global i32 0, align 4
@POLICY_RR_BASE_COUNT = common dso_local global i64 0, align 8
@PROCESSOR_SET_TIMESHARE_LIMITS = common dso_local global i32 0, align 4
@POLICY_TIMESHARE_LIMIT_COUNT = common dso_local global i64 0, align 8
@MAXPRI_KERNEL = common dso_local global i8* null, align 8
@PROCESSOR_SET_FIFO_LIMITS = common dso_local global i32 0, align 4
@POLICY_FIFO_LIMIT_COUNT = common dso_local global i64 0, align 8
@PROCESSOR_SET_RR_LIMITS = common dso_local global i32 0, align 4
@POLICY_RR_LIMIT_COUNT = common dso_local global i64 0, align 8
@PROCESSOR_SET_ENABLED_POLICIES = common dso_local global i32 0, align 4
@POLICY_RR = common dso_local global i32 0, align 4
@POLICY_FIFO = common dso_local global i32 0, align 4
@HOST_NULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processor_set_info(i64 %0, i32 %1, i32** %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @PROCESSOR_SET_NULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %6, align 4
  br label %210

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PROCESSOR_SET_BASIC_INFO, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PROCESSOR_SET_BASIC_INFO_COUNT, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %35, i32* %6, align 4
  br label %210

36:                                               ; preds = %29
  %37 = load i64, i64* %10, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %12, align 8
  %39 = load i32, i32* @processor_avail_count, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @POLICY_TIMESHARE, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* @PROCESSOR_SET_BASIC_INFO_COUNT, align 8
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %47, align 8
  %48 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %48, i32* %6, align 4
  br label %210

49:                                               ; preds = %25
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PROCESSOR_SET_TIMESHARE_DEFAULT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @POLICY_TIMESHARE_BASE_COUNT, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %59, i32* %6, align 4
  br label %210

60:                                               ; preds = %53
  %61 = load i64, i64* %10, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %13, align 8
  %63 = load i8*, i8** @BASEPRI_DEFAULT, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* @POLICY_TIMESHARE_BASE_COUNT, align 8
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %68, align 8
  %69 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %69, i32* %6, align 4
  br label %210

70:                                               ; preds = %49
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PROCESSOR_SET_FIFO_DEFAULT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @POLICY_FIFO_BASE_COUNT, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %80, i32* %6, align 4
  br label %210

81:                                               ; preds = %74
  %82 = load i64, i64* %10, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %14, align 8
  %84 = load i8*, i8** @BASEPRI_DEFAULT, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @POLICY_FIFO_BASE_COUNT, align 8
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %89, align 8
  %90 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %90, i32* %6, align 4
  br label %210

91:                                               ; preds = %70
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @PROCESSOR_SET_RR_DEFAULT, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i64*, i64** %11, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @POLICY_RR_BASE_COUNT, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %101, i32* %6, align 4
  br label %210

102:                                              ; preds = %95
  %103 = load i64, i64* %10, align 8
  %104 = inttoptr i64 %103 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %15, align 8
  %105 = load i8*, i8** @BASEPRI_DEFAULT, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load i64, i64* @POLICY_RR_BASE_COUNT, align 8
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %112, align 8
  %113 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %113, i32* %6, align 4
  br label %210

114:                                              ; preds = %91
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @PROCESSOR_SET_TIMESHARE_LIMITS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i64*, i64** %11, align 8
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @POLICY_TIMESHARE_LIMIT_COUNT, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %124, i32* %6, align 4
  br label %210

125:                                              ; preds = %118
  %126 = load i64, i64* %10, align 8
  %127 = inttoptr i64 %126 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %16, align 8
  %128 = load i8*, i8** @MAXPRI_KERNEL, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i64, i64* @POLICY_TIMESHARE_LIMIT_COUNT, align 8
  %132 = load i64*, i64** %11, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %133, align 8
  %134 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %134, i32* %6, align 4
  br label %210

135:                                              ; preds = %114
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @PROCESSOR_SET_FIFO_LIMITS, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i64*, i64** %11, align 8
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @POLICY_FIFO_LIMIT_COUNT, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %145, i32* %6, align 4
  br label %210

146:                                              ; preds = %139
  %147 = load i64, i64* %10, align 8
  %148 = inttoptr i64 %147 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %17, align 8
  %149 = load i8*, i8** @MAXPRI_KERNEL, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* @POLICY_FIFO_LIMIT_COUNT, align 8
  %153 = load i64*, i64** %11, align 8
  store i64 %152, i64* %153, align 8
  %154 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %154, align 8
  %155 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %155, i32* %6, align 4
  br label %210

156:                                              ; preds = %135
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @PROCESSOR_SET_RR_LIMITS, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %177

160:                                              ; preds = %156
  %161 = load i64*, i64** %11, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @POLICY_RR_LIMIT_COUNT, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %166, i32* %6, align 4
  br label %210

167:                                              ; preds = %160
  %168 = load i64, i64* %10, align 8
  %169 = inttoptr i64 %168 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %169, %struct.TYPE_11__** %18, align 8
  %170 = load i8*, i8** @MAXPRI_KERNEL, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  %173 = load i64, i64* @POLICY_RR_LIMIT_COUNT, align 8
  %174 = load i64*, i64** %11, align 8
  store i64 %173, i64* %174, align 8
  %175 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %175, align 8
  %176 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %176, i32* %6, align 4
  br label %210

177:                                              ; preds = %156
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @PROCESSOR_SET_ENABLED_POLICIES, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %177
  %182 = load i64*, i64** %11, align 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ult i64 %183, 1
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %186, i32* %6, align 4
  br label %210

187:                                              ; preds = %181
  %188 = load i64, i64* %10, align 8
  %189 = inttoptr i64 %188 to i32*
  store i32* %189, i32** %19, align 8
  %190 = load i32, i32* @POLICY_TIMESHARE, align 4
  %191 = load i32, i32* @POLICY_RR, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @POLICY_FIFO, align 4
  %194 = or i32 %192, %193
  %195 = load i32*, i32** %19, align 8
  store i32 %194, i32* %195, align 4
  %196 = load i64*, i64** %11, align 8
  store i64 1, i64* %196, align 8
  %197 = load i32**, i32*** %9, align 8
  store i32* @realhost, i32** %197, align 8
  %198 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %198, i32* %6, align 4
  br label %210

199:                                              ; preds = %177
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  %207 = load i32*, i32** @HOST_NULL, align 8
  %208 = load i32**, i32*** %9, align 8
  store i32* %207, i32** %208, align 8
  %209 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %206, %187, %185, %167, %165, %146, %144, %125, %123, %102, %100, %81, %79, %60, %58, %36, %34, %23
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
