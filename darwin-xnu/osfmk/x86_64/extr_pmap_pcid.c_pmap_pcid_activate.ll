; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap_pcid.c_pmap_pcid_activate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap_pcid.c_pmap_pcid_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i64*, i64, i64*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i64, i32, i64*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@PMAP_PCID_INVALID_PCID = common dso_local global i64 0, align 8
@PMAP_PCID_MAX_PCID = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global %struct.TYPE_10__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@npz = common dso_local global i32 0, align 4
@KERNEL_PML4_INDEX = common dso_local global i64 0, align 8
@PCID_RECORD_SIZE = common dso_local global i32 0, align 4
@pcid_record_array = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pcid_activate(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_13__* @cpu_datap(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %13, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_13__* @cpu_datap(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pmap_assert(i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PMAP_PCID_INVALID_PCID, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @__improbable(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @pmap_pcid_allocate_pcid(i32 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  store i64 %44, i64* %9, align 8
  br label %51

51:                                               ; preds = %42, %4
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @PMAP_PCID_INVALID_PCID, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @pmap_assert(i32 %55)
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call %struct.TYPE_13__* @cpu_datap(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  store i64 %57, i64* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FALSE, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @__probable(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %51
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %80
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %10, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = icmp ne %struct.TYPE_10__* %86, %87
  br label %89

89:                                               ; preds = %85, %76
  %90 = phi i1 [ false, %76 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %51
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ true, %92 ], [ %97, %95 ]
  %100 = zext i1 %99 to i32
  %101 = call i64 @__improbable(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @pmap_pcid_validate_cpu(%struct.TYPE_10__* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %111, i64 %112
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @PMAP_PCID_MAX_PCID, align 8
  %116 = icmp ult i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @pmap_assert(i32 %117)
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %121 = icmp eq %struct.TYPE_10__* %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load i64, i64* %9, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %122, %107
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* @PMAP_PCID_INVALID_PCID, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i1 [ false, %125 ], [ %131, %129 ]
  br label %134

134:                                              ; preds = %132, %122
  %135 = phi i1 [ true, %122 ], [ %133, %132 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @pmap_assert(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %14, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i64 @__improbable(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %173

144:                                              ; preds = %134
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @FALSE, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %9, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %14, align 8
  br label %160

160:                                              ; preds = %149, %144
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kernel_pmap, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call %struct.TYPE_13__* @cpu_datap(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 3
  store i64 %167, i64* %170, align 8
  %171 = load i32, i32* @npz, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* @npz, align 4
  br label %173

173:                                              ; preds = %160, %134
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i1 [ true, %173 ], [ %178, %176 ]
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %15, align 4
  %183 = load i64, i64* %14, align 8
  %184 = load i64, i64* %9, align 8
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @set_cr3_composed(i64 %183, i64 %184, i32 %185)
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* @PMAP_PCID_MAX_PCID, align 8
  %189 = add i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %16, align 4
  %191 = load i64, i64* %9, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %179
  store i32 0, i32* %16, align 4
  br label %194

194:                                              ; preds = %193, %179
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call %struct.TYPE_13__* @cpu_datap(i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 5
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call %struct.TYPE_12__* @cpu_shadowp(i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %9, align 8
  %210 = or i64 %208, %209
  %211 = load i32, i32* %6, align 4
  %212 = call %struct.TYPE_12__* @cpu_shadowp(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  store i64 %210, i64* %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %240, label %216

216:                                              ; preds = %194
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 1
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  %225 = zext i1 %224 to i32
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i64 @__improbable(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %216
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @pmap_pcid_validate_cpu(%struct.TYPE_10__* %232, i32 %233)
  %235 = load i64, i64* %14, align 8
  %236 = load i64, i64* %9, align 8
  %237 = load i32, i32* @FALSE, align 4
  %238 = call i32 @set_cr3_composed(i64 %235, i64 %236, i32 %237)
  br label %239

239:                                              ; preds = %231, %216
  br label %240

240:                                              ; preds = %239, %194
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i32, i32* %6, align 4
  %248 = call %struct.TYPE_13__* @cpu_datap(i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 6
  store i64* %246, i64** %249, align 8
  ret void
}

declare dso_local %struct.TYPE_13__* @cpu_datap(i32) #1

declare dso_local i32 @pmap_assert(i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @pmap_pcid_allocate_pcid(i32) #1

declare dso_local i64 @__probable(i32) #1

declare dso_local i32 @pmap_pcid_validate_cpu(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_cr3_composed(i64, i64, i32) #1

declare dso_local %struct.TYPE_12__* @cpu_shadowp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
