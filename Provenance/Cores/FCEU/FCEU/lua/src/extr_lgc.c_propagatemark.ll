; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_propagatemark.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_propagatemark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_38__*, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_38__* }
%struct.TYPE_39__ = type { %struct.TYPE_33__, %struct.TYPE_32__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_38__* }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_38__* }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_38__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*)* @propagatemark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagatemark(%struct.TYPE_35__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_35__*, align 8
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %3, align 8
  %9 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  store %struct.TYPE_38__* %11, %struct.TYPE_38__** %4, align 8
  %12 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %13 = call i32 @isgray(%struct.TYPE_38__* %12)
  %14 = call i32 @lua_assert(i32 %13)
  %15 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %16 = call i32 @gray2black(%struct.TYPE_38__* %15)
  %17 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %162 [
    i32 129, label %21
    i32 131, label %49
    i32 128, label %80
    i32 130, label %114
  ]

21:                                               ; preds = %1
  %22 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %23 = call %struct.TYPE_36__* @gco2h(%struct.TYPE_38__* %22)
  store %struct.TYPE_36__* %23, %struct.TYPE_36__** %5, align 8
  %24 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %27 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %27, i32 0, i32 0
  store %struct.TYPE_38__* %26, %struct.TYPE_38__** %28, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %31 = call i32 @traversetable(%struct.TYPE_35__* %29, %struct.TYPE_36__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %35 = call i32 @black2gray(%struct.TYPE_38__* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = add i64 16, %41
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %44 = call i32 @sizenode(%struct.TYPE_36__* %43)
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = add i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %164

49:                                               ; preds = %1
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %51 = call %struct.TYPE_39__* @gco2cl(%struct.TYPE_38__* %50)
  store %struct.TYPE_39__* %51, %struct.TYPE_39__** %6, align 8
  %52 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %54, align 8
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 0
  store %struct.TYPE_38__* %55, %struct.TYPE_38__** %57, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %59 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %60 = call i32 @traverseclosure(%struct.TYPE_35__* %58, %struct.TYPE_39__* %59)
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %49
  %67 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sizeCclosure(i32 %70)
  br label %78

72:                                               ; preds = %49
  %73 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @sizeLclosure(i32 %76)
  br label %78

78:                                               ; preds = %72, %66
  %79 = phi i32 [ %71, %66 ], [ %77, %72 ]
  store i32 %79, i32* %2, align 4
  br label %164

80:                                               ; preds = %1
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %82 = call %struct.TYPE_34__* @gco2th(%struct.TYPE_38__* %81)
  store %struct.TYPE_34__* %82, %struct.TYPE_34__** %7, align 8
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %84, align 8
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 0
  store %struct.TYPE_38__* %85, %struct.TYPE_38__** %87, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_38__*, %struct.TYPE_38__** %89, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 2
  store %struct.TYPE_38__* %90, %struct.TYPE_38__** %92, align 8
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 1
  store %struct.TYPE_38__* %93, %struct.TYPE_38__** %95, align 8
  %96 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %97 = call i32 @black2gray(%struct.TYPE_38__* %96)
  %98 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %100 = call i32 @traversestack(%struct.TYPE_35__* %98, %struct.TYPE_34__* %99)
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = add i64 16, %105
  %107 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 4, %110
  %112 = add i64 %106, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %2, align 4
  br label %164

114:                                              ; preds = %1
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %116 = call %struct.TYPE_37__* @gco2p(%struct.TYPE_38__* %115)
  store %struct.TYPE_37__* %116, %struct.TYPE_37__** %8, align 8
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %118, align 8
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 0
  store %struct.TYPE_38__* %119, %struct.TYPE_38__** %121, align 8
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %3, align 8
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %124 = call i32 @traverseproto(%struct.TYPE_35__* %122, %struct.TYPE_37__* %123)
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = mul i64 4, %128
  %130 = add i64 32, %129
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 8, %134
  %136 = add i64 %130, %135
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 4, %140
  %142 = add i64 %136, %141
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 4, %146
  %148 = add i64 %142, %147
  %149 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = add i64 %148, %153
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 8, %158
  %160 = add i64 %154, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %2, align 4
  br label %164

162:                                              ; preds = %1
  %163 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %162, %114, %80, %78, %36
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isgray(%struct.TYPE_38__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_36__* @gco2h(%struct.TYPE_38__*) #1

declare dso_local i32 @traversetable(%struct.TYPE_35__*, %struct.TYPE_36__*) #1

declare dso_local i32 @black2gray(%struct.TYPE_38__*) #1

declare dso_local i32 @sizenode(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_39__* @gco2cl(%struct.TYPE_38__*) #1

declare dso_local i32 @traverseclosure(%struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32 @sizeCclosure(i32) #1

declare dso_local i32 @sizeLclosure(i32) #1

declare dso_local %struct.TYPE_34__* @gco2th(%struct.TYPE_38__*) #1

declare dso_local i32 @traversestack(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_37__* @gco2p(%struct.TYPE_38__*) #1

declare dso_local i32 @traverseproto(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
