; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_register.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32*, i32, i32, i32, i8**, i8*, i32 }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i32*)* }

@in_dev_count = common dso_local global i32 0, align 4
@in_devices = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@IN_MAX_DEVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"input: too many devices, can't add %s\0A\00", align 1
@in_probe_dev_id = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"input: new device #%d \22%s\22\0A\00", align 1
@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_register(i8* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca [256 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strncpy(i8* %21, i8* %22, i32 256)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 244
  store i8 0, i8* %24, align 4
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8* %29, i8** %18, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %69, %6
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @in_dev_count, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %69

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = load i8*, i8** %18, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %69

67:                                               ; preds = %53
  br label %152

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %61, %42
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %30

72:                                               ; preds = %30
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @IN_MAX_DEVS, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @IN_MAX_DEVS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  br label %94

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %77

94:                                               ; preds = %89, %77
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @IN_MAX_DEVS, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %100 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  br label %237

101:                                              ; preds = %94
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = call i32 @in_free(%struct.TYPE_4__* %105)
  br label %107

107:                                              ; preds = %101, %72
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %109 = call i8* @strdup(i8* %108)
  store i8* %109, i8** %19, align 8
  %110 = load i8*, i8** %19, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %237

113:                                              ; preds = %107
  %114 = load i32, i32* @in_probe_dev_id, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32* @in_alloc_binds(i32 %114, i32 %115)
  store i32* %116, i32** %16, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i8*, i8** %19, align 8
  %121 = call i32 @free(i8* %120)
  br label %237

122:                                              ; preds = %113
  %123 = load i8*, i8** %19, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i8* %123, i8** %128, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  store i32* %129, i32** %134, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i32 %135, i32* %140, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* @in_dev_count, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %122
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @in_dev_count, align 4
  br label %148

148:                                              ; preds = %145, %122
  %149 = load i32, i32* %13, align 4
  %150 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %151 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %148, %67
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 4
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* @in_probe_dev_id, align 4
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 8
  store i32 %164, i32* %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  store i32 %170, i32* %175, align 8
  %176 = load i8**, i8*** %11, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 6
  store i8** %176, i8*** %181, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 7
  store i8* %182, i8** %187, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %237

195:                                              ; preds = %152
  %196 = load i32, i32* @in_probe_dev_id, align 4
  %197 = call i32 (i8*, i32*, i32*)* @DRV(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 (i8*, i32*, i32*)* %197, i32 (i8*, i32*, i32*)** %198, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %200 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %199, align 8
  %201 = load i8*, i8** %9, align 8
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %216 = mul nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  %219 = call i32 %200(i8* %201, i32* %207, i32* %218)
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %236

222:                                              ; preds = %195
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = bitcast i32* %228 to i8*
  %230 = call i32 @free(i8* %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @in_devices, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 2
  store i32* null, i32** %235, align 8
  br label %236

236:                                              ; preds = %222, %195
  br label %237

237:                                              ; preds = %98, %112, %119, %236, %152
  ret void
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @in_free(%struct.TYPE_4__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32* @in_alloc_binds(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 (i8*, i32*, i32*)* @DRV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
