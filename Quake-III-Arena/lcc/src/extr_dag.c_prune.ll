; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_prune.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_14__**, %struct.TYPE_17__** }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, %struct.TYPE_19__**, i32 }

@ASGN = common dso_local global i64 0, align 8
@ADDRL = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_12__* null, align 8
@INDIR = common dso_local global i64 0, align 8
@REGISTER = common dso_local global i64 0, align 8
@AUTO = common dso_local global i64 0, align 8
@ADDRG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*)* @prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @prune(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store %struct.TYPE_18__** %2, %struct.TYPE_18__*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  store %struct.TYPE_18__* %7, %struct.TYPE_18__** %3, align 8
  br label %8

8:                                                ; preds = %215, %1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = icmp ne %struct.TYPE_18__* %9, null
  br i1 %10, label %11, label %219

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %17, i64 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = call i8* @replace(%struct.TYPE_19__* %19)
  %21 = bitcast i8* %20 to %struct.TYPE_19__*
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %24, i64 0
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %25, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %28, i64 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = call i8* @replace(%struct.TYPE_19__* %30)
  %32 = bitcast i8* %31 to %struct.TYPE_19__*
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %35, i64 1
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %36, align 8
  br label %37

37:                                               ; preds = %14, %11
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @generic(i32 %40)
  %42 = load i64, i64* @ASGN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %209

44:                                               ; preds = %37
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %47, i64 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @generic(i32 %51)
  %53 = load i64, i64* @ADDRL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %209

55:                                               ; preds = %44
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %58, i64 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %62, i64 0
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %209

68:                                               ; preds = %55
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %71, i64 0
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %75, i64 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %84, i64 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = icmp eq %struct.TYPE_19__* %81, %86
  br i1 %87, label %88, label %209

88:                                               ; preds = %68
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %91, i64 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %95, i64 0
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %6, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %88
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @IR, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = call i32 %105(%struct.TYPE_17__* %106)
  br label %108

108:                                              ; preds = %102, %88
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %113, i64 1
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @generic(i32 %117)
  %119 = load i64, i64* @INDIR, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %108
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %124, i64 1
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %128, i64 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @isaddrop(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %121
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %138, i64 1
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %142, i64 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %146, i64 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @REGISTER, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %201, label %153

153:                                              ; preds = %135, %121, %108
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %156, i64 1
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @generic(i32 %160)
  %162 = load i64, i64* @INDIR, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %184

164:                                              ; preds = %153
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %167, i64 1
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %171, i64 0
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @isaddrop(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %164
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AUTO, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %201, label %184

184:                                              ; preds = %178, %164, %153
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %187, i64 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @generic(i32 %191)
  %193 = load i64, i64* @ADDRG, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %184
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AUTO, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %195, %178, %135
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32 1, i32* %205, align 8
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %215

208:                                              ; preds = %195, %184
  br label %209

209:                                              ; preds = %208, %68, %55, %44, %37
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_18__* %210, %struct.TYPE_18__** %211, align 8
  %212 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 0
  store %struct.TYPE_18__** %214, %struct.TYPE_18__*** %4, align 8
  br label %215

215:                                              ; preds = %209, %201
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  store %struct.TYPE_18__* %218, %struct.TYPE_18__** %3, align 8
  br label %8

219:                                              ; preds = %8
  %220 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %220, align 8
  %222 = icmp eq %struct.TYPE_18__* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert(i32 %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %225
}

declare dso_local i8* @replace(%struct.TYPE_19__*) #1

declare dso_local i64 @generic(i32) #1

declare dso_local i64 @isaddrop(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
