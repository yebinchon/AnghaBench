; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_findoverlap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_lockf.c_lf_findoverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32, i32, i64, %struct.lockf* }

@NOLOCKF = common dso_local global %struct.lockf* null, align 8
@SELF = common dso_local global i32 0, align 4
@OTHERS = common dso_local global i32 0, align 4
@OVERLAP_NONE = common dso_local global i32 0, align 4
@LF_DBG_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"no overlap\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"overlap == lock\0A\00", align 1
@OVERLAP_EQUALS_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"overlap contains lock\0A\00", align 1
@OVERLAP_CONTAINS_LOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"lock contains overlap\0A\00", align 1
@OVERLAP_CONTAINED_BY_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"overlap starts before lock\0A\00", align 1
@OVERLAP_STARTS_BEFORE_LOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"overlap ends after lock\0A\00", align 1
@OVERLAP_ENDS_AFTER_LOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"lf_findoverlap: default\00", align 1
@lockf_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lockf*, %struct.lockf*, i32, %struct.lockf***, %struct.lockf**)* @lf_findoverlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lf_findoverlap(%struct.lockf* %0, %struct.lockf* %1, i32 %2, %struct.lockf*** %3, %struct.lockf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lockf*, align 8
  %8 = alloca %struct.lockf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lockf***, align 8
  %11 = alloca %struct.lockf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lockf* %0, %struct.lockf** %7, align 8
  store %struct.lockf* %1, %struct.lockf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.lockf*** %3, %struct.lockf**** %10, align 8
  store %struct.lockf** %4, %struct.lockf*** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.lockf*, %struct.lockf** %7, align 8
  %16 = load %struct.lockf**, %struct.lockf*** %11, align 8
  store %struct.lockf* %15, %struct.lockf** %16, align 8
  %17 = load %struct.lockf*, %struct.lockf** %7, align 8
  %18 = load %struct.lockf*, %struct.lockf** @NOLOCKF, align 8
  %19 = icmp eq %struct.lockf* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %241

21:                                               ; preds = %5
  %22 = load %struct.lockf*, %struct.lockf** %8, align 8
  %23 = getelementptr inbounds %struct.lockf, %struct.lockf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lockf*, %struct.lockf** %8, align 8
  %26 = getelementptr inbounds %struct.lockf, %struct.lockf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %237, %120, %68, %21
  %29 = load %struct.lockf*, %struct.lockf** %7, align 8
  %30 = load %struct.lockf*, %struct.lockf** @NOLOCKF, align 8
  %31 = icmp ne %struct.lockf* %29, %30
  br i1 %31, label %32, label %239

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SELF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.lockf*, %struct.lockf** %7, align 8
  %39 = getelementptr inbounds %struct.lockf, %struct.lockf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lockf*, %struct.lockf** %8, align 8
  %42 = getelementptr inbounds %struct.lockf, %struct.lockf* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @OTHERS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.lockf*, %struct.lockf** %7, align 8
  %52 = getelementptr inbounds %struct.lockf, %struct.lockf* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lockf*, %struct.lockf** %8, align 8
  %55 = getelementptr inbounds %struct.lockf, %struct.lockf* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %50, %37
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SELF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @OVERLAP_NONE, align 4
  store i32 %67, i32* %6, align 4
  br label %241

68:                                               ; preds = %63, %58
  %69 = load %struct.lockf*, %struct.lockf** %7, align 8
  %70 = getelementptr inbounds %struct.lockf, %struct.lockf* %69, i32 0, i32 3
  %71 = load %struct.lockf***, %struct.lockf**** %10, align 8
  store %struct.lockf** %70, %struct.lockf*** %71, align 8
  %72 = load %struct.lockf*, %struct.lockf** %7, align 8
  %73 = getelementptr inbounds %struct.lockf, %struct.lockf* %72, i32 0, i32 3
  %74 = load %struct.lockf*, %struct.lockf** %73, align 8
  store %struct.lockf* %74, %struct.lockf** %7, align 8
  %75 = load %struct.lockf**, %struct.lockf*** %11, align 8
  store %struct.lockf* %74, %struct.lockf** %75, align 8
  br label %28

76:                                               ; preds = %50, %45
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SELF, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %14, align 4
  br label %82

82:                                               ; preds = %81, %76
  %83 = load %struct.lockf*, %struct.lockf** %7, align 8
  %84 = getelementptr inbounds %struct.lockf, %struct.lockf* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.lockf*, %struct.lockf** %7, align 8
  %90 = getelementptr inbounds %struct.lockf, %struct.lockf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %102, label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, -1
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  %97 = load %struct.lockf*, %struct.lockf** %7, align 8
  %98 = getelementptr inbounds %struct.lockf, %struct.lockf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %96, %87
  %103 = load i32, i32* @LF_DBG_LIST, align 4
  %104 = call i32 @LOCKF_DEBUG(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @SELF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.lockf*, %struct.lockf** %7, align 8
  %114 = getelementptr inbounds %struct.lockf, %struct.lockf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @OVERLAP_NONE, align 4
  store i32 %119, i32* %6, align 4
  br label %241

120:                                              ; preds = %112, %109, %102
  %121 = load %struct.lockf*, %struct.lockf** %7, align 8
  %122 = getelementptr inbounds %struct.lockf, %struct.lockf* %121, i32 0, i32 3
  %123 = load %struct.lockf***, %struct.lockf**** %10, align 8
  store %struct.lockf** %122, %struct.lockf*** %123, align 8
  %124 = load %struct.lockf*, %struct.lockf** %7, align 8
  %125 = getelementptr inbounds %struct.lockf, %struct.lockf* %124, i32 0, i32 3
  %126 = load %struct.lockf*, %struct.lockf** %125, align 8
  store %struct.lockf* %126, %struct.lockf** %7, align 8
  %127 = load %struct.lockf**, %struct.lockf*** %11, align 8
  store %struct.lockf* %126, %struct.lockf** %127, align 8
  br label %28

128:                                              ; preds = %96, %93
  %129 = load %struct.lockf*, %struct.lockf** %7, align 8
  %130 = getelementptr inbounds %struct.lockf, %struct.lockf* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.lockf*, %struct.lockf** %7, align 8
  %136 = getelementptr inbounds %struct.lockf, %struct.lockf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @LF_DBG_LIST, align 4
  %142 = call i32 @LOCKF_DEBUG(i32 %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i32, i32* @OVERLAP_EQUALS_LOCK, align 4
  store i32 %143, i32* %6, align 4
  br label %241

144:                                              ; preds = %134, %128
  %145 = load %struct.lockf*, %struct.lockf** %7, align 8
  %146 = getelementptr inbounds %struct.lockf, %struct.lockf* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.lockf*, %struct.lockf** %7, align 8
  %155 = getelementptr inbounds %struct.lockf, %struct.lockf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load %struct.lockf*, %struct.lockf** %7, align 8
  %161 = getelementptr inbounds %struct.lockf, %struct.lockf* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %168

164:                                              ; preds = %159, %153
  %165 = load i32, i32* @LF_DBG_LIST, align 4
  %166 = call i32 @LOCKF_DEBUG(i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @OVERLAP_CONTAINS_LOCK, align 4
  store i32 %167, i32* %6, align 4
  br label %241

168:                                              ; preds = %159, %150, %144
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.lockf*, %struct.lockf** %7, align 8
  %171 = getelementptr inbounds %struct.lockf, %struct.lockf* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sle i32 %169, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %168
  %175 = load i32, i32* %13, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %188, label %177

177:                                              ; preds = %174
  %178 = load %struct.lockf*, %struct.lockf** %7, align 8
  %179 = getelementptr inbounds %struct.lockf, %struct.lockf* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, -1
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.lockf*, %struct.lockf** %7, align 8
  %185 = getelementptr inbounds %struct.lockf, %struct.lockf* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182, %174
  %189 = load i32, i32* @LF_DBG_LIST, align 4
  %190 = call i32 @LOCKF_DEBUG(i32 %189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %191 = load i32, i32* @OVERLAP_CONTAINED_BY_LOCK, align 4
  store i32 %191, i32* %6, align 4
  br label %241

192:                                              ; preds = %182, %177, %168
  %193 = load %struct.lockf*, %struct.lockf** %7, align 8
  %194 = getelementptr inbounds %struct.lockf, %struct.lockf* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %192
  %199 = load %struct.lockf*, %struct.lockf** %7, align 8
  %200 = getelementptr inbounds %struct.lockf, %struct.lockf* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %209, label %204

204:                                              ; preds = %198
  %205 = load %struct.lockf*, %struct.lockf** %7, align 8
  %206 = getelementptr inbounds %struct.lockf, %struct.lockf* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %213

209:                                              ; preds = %204, %198
  %210 = load i32, i32* @LF_DBG_LIST, align 4
  %211 = call i32 @LOCKF_DEBUG(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %212 = load i32, i32* @OVERLAP_STARTS_BEFORE_LOCK, align 4
  store i32 %212, i32* %6, align 4
  br label %241

213:                                              ; preds = %204, %192
  %214 = load %struct.lockf*, %struct.lockf** %7, align 8
  %215 = getelementptr inbounds %struct.lockf, %struct.lockf* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %213
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %237

222:                                              ; preds = %219
  %223 = load %struct.lockf*, %struct.lockf** %7, align 8
  %224 = getelementptr inbounds %struct.lockf, %struct.lockf* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = load %struct.lockf*, %struct.lockf** %7, align 8
  %230 = getelementptr inbounds %struct.lockf, %struct.lockf* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, -1
  br i1 %232, label %233, label %237

233:                                              ; preds = %228, %222
  %234 = load i32, i32* @LF_DBG_LIST, align 4
  %235 = call i32 @LOCKF_DEBUG(i32 %234, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %236 = load i32, i32* @OVERLAP_ENDS_AFTER_LOCK, align 4
  store i32 %236, i32* %6, align 4
  br label %241

237:                                              ; preds = %228, %219, %213
  %238 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %28

239:                                              ; preds = %28
  %240 = load i32, i32* @OVERLAP_NONE, align 4
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %239, %233, %209, %188, %164, %140, %118, %66, %20
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i32 @LOCKF_DEBUG(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
