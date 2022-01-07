; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_process608.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_process608.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i8, i8, i64, i32, i32 }

@process608.textprinted = internal global i32 0, align 4
@debug_608 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cc_channel = common dso_local global i32 0, align 4
@MODE_ROLLUP_2 = common dso_local global i64 0, align 8
@MODE_ROLLUP_3 = common dso_local global i64 0, align 8
@MODE_ROLLUP_4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.s_write*)* @process608 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process608(i8* %0, i32 %1, %struct.s_write* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.s_write* %2, %struct.s_write** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %222

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %218, %12
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %221

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 127
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 127
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %9, align 1
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %17
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %218

43:                                               ; preds = %38, %17
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sle i32 %49, 14
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.s_write*, %struct.s_write** %6, align 8
  %53 = getelementptr inbounds %struct.s_write, %struct.s_write* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 3, i32* %55, align 8
  %56 = load %struct.s_write*, %struct.s_write** %6, align 8
  %57 = getelementptr inbounds %struct.s_write, %struct.s_write* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %47, %43
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 15
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.s_write*, %struct.s_write** %6, align 8
  %64 = getelementptr inbounds %struct.s_write, %struct.s_write* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  br label %218

65:                                               ; preds = %58
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 16
  br i1 %68, label %69, label %119

69:                                               ; preds = %65
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %71, 31
  br i1 %72, label %73, label %119

73:                                               ; preds = %69
  %74 = load i64, i64* @debug_608, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @process608.textprinted, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @hb_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @process608.textprinted, align 4
  br label %81

81:                                               ; preds = %79, %76, %73
  %82 = load %struct.s_write*, %struct.s_write** %6, align 8
  %83 = getelementptr inbounds %struct.s_write, %struct.s_write* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load %struct.s_write*, %struct.s_write** %6, align 8
  %85 = getelementptr inbounds %struct.s_write, %struct.s_write* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 4
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* %8, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %81
  %94 = load %struct.s_write*, %struct.s_write** %6, align 8
  %95 = getelementptr inbounds %struct.s_write, %struct.s_write* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* %9, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %218

104:                                              ; preds = %93, %81
  %105 = load i8, i8* %8, align 1
  %106 = load %struct.s_write*, %struct.s_write** %6, align 8
  %107 = getelementptr inbounds %struct.s_write, %struct.s_write* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i8 %105, i8* %109, align 4
  %110 = load i8, i8* %9, align 1
  %111 = load %struct.s_write*, %struct.s_write** %6, align 8
  %112 = getelementptr inbounds %struct.s_write, %struct.s_write* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i8 %110, i8* %114, align 1
  %115 = load i8, i8* %8, align 1
  %116 = load i8, i8* %9, align 1
  %117 = load %struct.s_write*, %struct.s_write** %6, align 8
  %118 = call i32 @disCommand(i8 zeroext %115, i8 zeroext %116, %struct.s_write* %117)
  br label %119

119:                                              ; preds = %104, %69, %65
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sge i32 %121, 32
  br i1 %122, label %123, label %156

123:                                              ; preds = %119
  %124 = load %struct.s_write*, %struct.s_write** %6, align 8
  %125 = getelementptr inbounds %struct.s_write, %struct.s_write* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @cc_channel, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %218

132:                                              ; preds = %123
  %133 = load i64, i64* @debug_608, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* @process608.textprinted, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @hb_log(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @process608.textprinted, align 4
  br label %140

140:                                              ; preds = %138, %135
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i8, i8* %8, align 1
  %143 = load %struct.s_write*, %struct.s_write** %6, align 8
  %144 = call i32 @handle_single(i8 zeroext %142, %struct.s_write* %143)
  %145 = load i8, i8* %9, align 1
  %146 = load %struct.s_write*, %struct.s_write** %6, align 8
  %147 = call i32 @handle_single(i8 zeroext %145, %struct.s_write* %146)
  %148 = load %struct.s_write*, %struct.s_write** %6, align 8
  %149 = getelementptr inbounds %struct.s_write, %struct.s_write* %148, i32 0, i32 2
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i8 0, i8* %151, align 4
  %152 = load %struct.s_write*, %struct.s_write** %6, align 8
  %153 = getelementptr inbounds %struct.s_write, %struct.s_write* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  store i8 0, i8* %155, align 1
  br label %156

156:                                              ; preds = %141, %119
  %157 = load i64, i64* @debug_608, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i32, i32* @process608.textprinted, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %159
  %163 = load %struct.s_write*, %struct.s_write** %6, align 8
  %164 = getelementptr inbounds %struct.s_write, %struct.s_write* %163, i32 0, i32 2
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @cc_channel, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170, %162, %159, %156
  %172 = load %struct.s_write*, %struct.s_write** %6, align 8
  %173 = getelementptr inbounds %struct.s_write, %struct.s_write* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MODE_ROLLUP_2, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %195, label %179

179:                                              ; preds = %171
  %180 = load %struct.s_write*, %struct.s_write** %6, align 8
  %181 = getelementptr inbounds %struct.s_write, %struct.s_write* %180, i32 0, i32 2
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @MODE_ROLLUP_3, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %195, label %187

187:                                              ; preds = %179
  %188 = load %struct.s_write*, %struct.s_write** %6, align 8
  %189 = getelementptr inbounds %struct.s_write, %struct.s_write* %188, i32 0, i32 2
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @MODE_ROLLUP_4, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %217

195:                                              ; preds = %187, %179, %171
  %196 = load %struct.s_write*, %struct.s_write** %6, align 8
  %197 = getelementptr inbounds %struct.s_write, %struct.s_write* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %217

200:                                              ; preds = %195
  %201 = load %struct.s_write*, %struct.s_write** %6, align 8
  %202 = call i32 @write_cc_buffer(%struct.s_write* %201)
  %203 = load %struct.s_write*, %struct.s_write** %6, align 8
  %204 = getelementptr inbounds %struct.s_write, %struct.s_write* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.s_write*, %struct.s_write** %6, align 8
  %207 = getelementptr inbounds %struct.s_write, %struct.s_write* %206, i32 0, i32 2
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 5
  store i32 %205, i32* %209, align 4
  %210 = load %struct.s_write*, %struct.s_write** %6, align 8
  %211 = getelementptr inbounds %struct.s_write, %struct.s_write* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.s_write*, %struct.s_write** %6, align 8
  %214 = getelementptr inbounds %struct.s_write, %struct.s_write* %213, i32 0, i32 2
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 4
  store i32 %212, i32* %216, align 8
  br label %217

217:                                              ; preds = %200, %195, %187
  br label %218

218:                                              ; preds = %217, %131, %103, %62, %42
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 2
  store i32 %220, i32* %7, align 4
  br label %13

221:                                              ; preds = %13
  br label %222

222:                                              ; preds = %221, %3
  ret void
}

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @disCommand(i8 zeroext, i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @handle_single(i8 zeroext, %struct.s_write*) #1

declare dso_local i32 @write_cc_buffer(%struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
