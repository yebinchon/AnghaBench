; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_red_drops.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_red_drops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i64, i64, i32*, i64, i64, i32, i32, i32, i64, i64, i64 }
%struct.dn_flow_queue = type { i64, i64, i32, i64, i32, i32 }

@DN_QSIZE_IS_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0Adummynet: %d q: %2u \00", align 1
@curr_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"dummynet: avg: %u \00", align 1
@DN_IS_GENTLE_RED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"dummynet: - drop\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"dummynet: - red drop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_flow_set*, %struct.dn_flow_queue*, i32)* @red_drops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @red_drops(%struct.dn_flow_set* %0, %struct.dn_flow_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_flow_set*, align 8
  %6 = alloca %struct.dn_flow_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %5, align 8
  store %struct.dn_flow_queue* %1, %struct.dn_flow_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %14 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DN_QSIZE_IS_BYTES, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %21 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %25 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %22, %19 ], [ %26, %23 ]
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* @curr_time, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %9, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DPRINTF(i8* %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @SCALE(i32 %38)
  %40 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %41 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %46 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @SCALE_MUL(i32 %44, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %53 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %94

56:                                               ; preds = %27
  %57 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %58 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load i64, i64* @curr_time, align 8
  %63 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %64 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %68 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sdiv i64 %66, %69
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %73 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %61
  %77 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %78 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %81 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @SCALE_MUL(i32 %79, i32 %85)
  br label %88

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %76
  %89 = phi i8* [ %86, %76 ], [ null, %87 ]
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %92 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %56
  br label %94

94:                                               ; preds = %93, %36
  %95 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %96 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @SCALE_VAL(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @DPRINTF(i8* %100)
  %102 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %103 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %107 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %94
  %111 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %112 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %111, i32 0, i32 4
  store i32 -1, i32* %112, align 8
  store i32 0, i32* %4, align 4
  br label %225

113:                                              ; preds = %94
  %114 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %115 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %119 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %117, %120
  br i1 %121, label %122, label %150

122:                                              ; preds = %113
  %123 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %124 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122
  %130 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %131 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %135 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @SCALE_MUL(i32 %133, i32 %136)
  %138 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %139 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = sub i64 0, %141
  %143 = getelementptr i8, i8* %137, i64 %142
  %144 = ptrtoint i8* %143 to i32
  store i32 %144, i32* %8, align 4
  br label %149

145:                                              ; preds = %122
  %146 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %147 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %146, i32 0, i32 4
  store i32 -1, i32* %147, align 8
  %148 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %225

149:                                              ; preds = %129
  br label %176

150:                                              ; preds = %113
  %151 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %152 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %156 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %154, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %150
  %160 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %161 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %165 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @SCALE_MUL(i32 %163, i32 %166)
  %168 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %169 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = sub i64 0, %171
  %173 = getelementptr i8, i8* %167, i64 %172
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %159, %150
  br label %176

176:                                              ; preds = %175, %149
  %177 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %178 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @DN_QSIZE_IS_BYTES, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %7, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %188 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = sdiv i32 %186, %189
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %183, %176
  %192 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %193 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = call i32 (...) @my_random()
  %199 = and i32 %198, 65535
  %200 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %201 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  br label %224

202:                                              ; preds = %191
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %205 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @SCALE(i32 %206)
  %208 = call i8* @SCALE_MUL(i32 %203, i32 %207)
  %209 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %210 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = inttoptr i64 %212 to i8*
  %214 = icmp ugt i8* %208, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %202
  %216 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %217 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %216, i32 0, i32 4
  store i32 0, i32* %217, align 8
  %218 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %219 = call i32 (...) @my_random()
  %220 = and i32 %219, 65535
  %221 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %222 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  store i32 1, i32* %4, align 4
  br label %225

223:                                              ; preds = %202
  br label %224

224:                                              ; preds = %223, %197
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %224, %215, %145, %110
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @SCALE(i32) #1

declare dso_local i8* @SCALE_MUL(i32, i32) #1

declare dso_local i32 @SCALE_VAL(i32) #1

declare dso_local i32 @my_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
