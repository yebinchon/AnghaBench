; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_get_frame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_frame = type { i32, i64, i64, i64*, i64*, i64 }
%struct.pullup_context = type { %struct.TYPE_2__*, i64, %struct.pullup_frame* }
%struct.TYPE_2__ = type { i32, i64, i64, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [18 x i8] c"duration: %d    \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context* %0) #0 {
  %2 = alloca %struct.pullup_frame*, align 8
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pullup_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  %8 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %9 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %8, i32 0, i32 2
  %10 = load %struct.pullup_frame*, %struct.pullup_frame** %9, align 8
  store %struct.pullup_frame* %10, %struct.pullup_frame** %5, align 8
  %11 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %12 = call i32 @pullup_decide_frame_length(%struct.pullup_context* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %14 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.pullup_frame* null, %struct.pullup_frame** %2, align 8
  br label %232

23:                                               ; preds = %1
  %24 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %25 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.pullup_frame* null, %struct.pullup_frame** %2, align 8
  br label %232

29:                                               ; preds = %23
  %30 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %31 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %36 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %37 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @pullup_print_aff_and_breaks(%struct.pullup_context* %35, %struct.TYPE_2__* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %44 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %49 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %51 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %56 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %58 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %86, %42
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %65 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %70 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %68, i64* %74, align 8
  %75 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %76 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %80 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load %struct.pullup_context*, %struct.pullup_context** %3, align 8
  %85 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %84, i32 0, i32 0
  store %struct.TYPE_2__* %83, %struct.TYPE_2__** %85, align 8
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %59

89:                                               ; preds = %59
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %94 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %99 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %98, i32 0, i32 4
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %102 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  store i64 %97, i64* %104, align 8
  %105 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %106 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %105, i32 0, i32 4
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %109 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = xor i64 %110, 1
  %112 = getelementptr inbounds i64, i64* %107, i64 %111
  store i64 0, i64* %112, align 8
  br label %193

113:                                              ; preds = %89
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %142

116:                                              ; preds = %113
  %117 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %118 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %123 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %122, i32 0, i32 4
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %126 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i64, i64* %124, i64 %127
  store i64 %121, i64* %128, align 8
  %129 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %130 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %129, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %135 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %134, i32 0, i32 4
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %138 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = xor i64 %139, 1
  %141 = getelementptr inbounds i64, i64* %136, i64 %140
  store i64 %133, i64* %141, align 8
  br label %192

142:                                              ; preds = %113
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %191

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %150 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %149, i32 0, i32 3
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %155 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %154, i32 0, i32 3
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %153, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 -1, i32 1
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %148, %145
  %163 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %164 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %163, i32 0, i32 3
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 1, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %172 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %171, i32 0, i32 4
  %173 = load i64*, i64** %172, align 8
  %174 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %175 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %173, i64 %176
  store i64 %170, i64* %177, align 8
  %178 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %179 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %178, i32 0, i32 3
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %184 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %183, i32 0, i32 4
  %185 = load i64*, i64** %184, align 8
  %186 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %187 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = xor i64 %188, 1
  %190 = getelementptr inbounds i64, i64* %185, i64 %189
  store i64 %182, i64* %190, align 8
  br label %191

191:                                              ; preds = %162, %142
  br label %192

192:                                              ; preds = %191, %116
  br label %193

193:                                              ; preds = %192, %92
  %194 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %195 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %194, i32 0, i32 4
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @pullup_lock_buffer(i64 %198, i32 0)
  %200 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %201 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %200, i32 0, i32 4
  %202 = load i64*, i64** %201, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @pullup_lock_buffer(i64 %204, i32 1)
  %206 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %207 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %206, i32 0, i32 4
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %212 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %211, i32 0, i32 4
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %210, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %193
  %218 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %219 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %218, i32 0, i32 4
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %224 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %223, i32 0, i32 2
  store i64 %222, i64* %224, align 8
  %225 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  %226 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @pullup_lock_buffer(i64 %227, i32 2)
  %229 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  store %struct.pullup_frame* %229, %struct.pullup_frame** %2, align 8
  br label %232

230:                                              ; preds = %193
  %231 = load %struct.pullup_frame*, %struct.pullup_frame** %5, align 8
  store %struct.pullup_frame* %231, %struct.pullup_frame** %2, align 8
  br label %232

232:                                              ; preds = %230, %217, %28, %22
  %233 = load %struct.pullup_frame*, %struct.pullup_frame** %2, align 8
  ret %struct.pullup_frame* %233
}

declare dso_local i32 @pullup_decide_frame_length(%struct.pullup_context*) #1

declare dso_local i32 @pullup_print_aff_and_breaks(%struct.pullup_context*, %struct.TYPE_2__*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pullup_lock_buffer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
