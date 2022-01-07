; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_visit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_dag.c_visit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_19__**, %struct.TYPE_18__** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }

@ADDRL = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@ADDRF = common dso_local global i64 0, align 8
@INDIR = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@REGISTER = common dso_local global i32 0, align 4
@tail = common dso_local global %struct.TYPE_20__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*, i32)* @visit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @visit(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %6 = icmp ne %struct.TYPE_18__* %5, null
  br i1 %6, label %7, label %217

7:                                                ; preds = %2
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %10, i64 2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = call %struct.TYPE_18__* @tmpnode(%struct.TYPE_18__* %15)
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %3, align 8
  br label %216

17:                                               ; preds = %7
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @iscall(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %22, %17
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @iscall(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %33, %22
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %42, i64 0
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %44, i32 0)
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %48, i64 0
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %52, i64 1
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %54, i32 0)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %58, i64 1
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %59, align 8
  br label %215

60:                                               ; preds = %33, %28
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @specific(i64 %63)
  %65 = load i64, i64* @ADDRL, align 8
  %66 = load i64, i64* @P, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %60
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @specific(i64 %72)
  %74 = load i64, i64* @ADDRF, align 8
  %75 = load i64, i64* @P, align 8
  %76 = add nsw i64 %74, %75
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %69, %60
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %89, i64 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = call %struct.TYPE_18__* @newnode(i64 %86, %struct.TYPE_18__* null, i32* null, %struct.TYPE_19__* %91)
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %3, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %214

95:                                               ; preds = %69
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @INDIR, align 8
  %100 = load i64, i64* @B, align 8
  %101 = add nsw i64 %99, %100
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %109, i64 0
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = call %struct.TYPE_18__* @newnode(i64 %106, %struct.TYPE_18__* %111, i32* null, %struct.TYPE_19__* null)
  store %struct.TYPE_18__* %112, %struct.TYPE_18__** %3, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %117, i64 0
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %119, i32 0)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %123, i64 0
  store %struct.TYPE_18__* %120, %struct.TYPE_18__** %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %127, i64 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %128, align 8
  %130 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %129, i32 0)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %133, i64 1
  store %struct.TYPE_18__* %130, %struct.TYPE_18__** %134, align 8
  br label %213

135:                                              ; preds = %95
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %138, i64 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %140, i32 0)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %144, i64 0
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %148, i64 1
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = call %struct.TYPE_18__* @visit(%struct.TYPE_18__* %150, i32 0)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %154, i64 1
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %155, align 8
  %156 = load i32, i32* @REGISTER, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @opsize(i64 %162)
  %164 = call i32 @btot(i64 %159, i32 %163)
  %165 = call %struct.TYPE_19__* @temporary(i32 %156, i32 %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %168, i64 2
  store %struct.TYPE_19__* %165, %struct.TYPE_19__** %169, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %172, i64 2
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %183, i64 2
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %190, i64 2
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  store %struct.TYPE_18__* %187, %struct.TYPE_18__** %195, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %198, i64 2
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = call %struct.TYPE_20__* @asgnnode(%struct.TYPE_19__* %200, %struct.TYPE_18__* %201)
  %203 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @tail, align 8
  store %struct.TYPE_20__* %202, %struct.TYPE_20__** %203, align 8
  %204 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @tail, align 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  store %struct.TYPE_20__** %206, %struct.TYPE_20__*** @tail, align 8
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %135
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %211 = call %struct.TYPE_18__* @tmpnode(%struct.TYPE_18__* %210)
  store %struct.TYPE_18__* %211, %struct.TYPE_18__** %3, align 8
  br label %212

212:                                              ; preds = %209, %135
  br label %213

213:                                              ; preds = %212, %103
  br label %214

214:                                              ; preds = %213, %78
  br label %215

215:                                              ; preds = %214, %39
  br label %216

216:                                              ; preds = %215, %14
  br label %217

217:                                              ; preds = %216, %2
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %218
}

declare dso_local %struct.TYPE_18__* @tmpnode(%struct.TYPE_18__*) #1

declare dso_local i64 @iscall(i64) #1

declare dso_local i64 @specific(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_18__* @newnode(i64, %struct.TYPE_18__*, i32*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @temporary(i32, i32) #1

declare dso_local i32 @btot(i64, i32) #1

declare dso_local i32 @opsize(i64) #1

declare dso_local %struct.TYPE_20__* @asgnnode(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
