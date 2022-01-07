; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetBestRouteEntryFromRouteTableEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_GetBestRouteEntryFromRouteTableEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @GetBestRouteEntryFromRouteTableEx(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i64 0, i64* %11, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = icmp eq %struct.TYPE_14__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = icmp eq %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %206

29:                                               ; preds = %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = call i64 @IsIP6(%struct.TYPE_14__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %206

34:                                               ; preds = %29
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %93, %34
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %44, i64 %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %12, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = call i64 @IPToUINT(%struct.TYPE_14__* %48)
  store i64 %49, i64* %13, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 7
  %52 = call i64 @IPToUINT(%struct.TYPE_14__* %51)
  store i64 %52, i64* %14, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = call i64 @IPToUINT(%struct.TYPE_14__* %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %41
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %93

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %15, align 8
  %69 = and i64 %67, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = and i64 %70, %71
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %66
  %75 = load i64, i64* %15, align 8
  store i64 %75, i64* %16, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 4294967295, %78
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %16, align 8
  %81 = mul nsw i64 %80, 2147483648
  %82 = mul nsw i64 %81, 2
  %83 = load i64, i64* %17, align 8
  %84 = add nsw i64 %82, %83
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %18, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  store i64 1, i64* %18, align 8
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i64, i64* %18, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %88, %66
  br label %93

93:                                               ; preds = %92, %64
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %35

96:                                               ; preds = %35
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  store i64 0, i64* %8, align 8
  br label %97

97:                                               ; preds = %127, %96
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %107
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %19, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %103
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %10, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %103
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %8, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %8, align 8
  br label %97

130:                                              ; preds = %97
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = icmp ne %struct.TYPE_13__* %131, null
  br i1 %132, label %133, label %204

133:                                              ; preds = %130
  %134 = call %struct.TYPE_13__* @ZeroMallocFast(i32 72)
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %9, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 7
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = call i32 @Copy(%struct.TYPE_14__* %136, %struct.TYPE_14__* %137, i32 8)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 255, i32* %143, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 255, i32* %148, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 255, i32* %153, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 255, i32* %158, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 6
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 6
  %163 = call i32 @Copy(%struct.TYPE_14__* %160, %struct.TYPE_14__* %162, i32 8)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 8
  store i32 %171, i32* %173, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  store i64 1, i64* %180, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 7
  %188 = call i64 @IPToUINT(%struct.TYPE_14__* %187)
  store i64 %188, i64* %20, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 6
  %191 = call i64 @IPToUINT(%struct.TYPE_14__* %190)
  store i64 %191, i64* %21, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 5
  %194 = call i64 @IPToUINT(%struct.TYPE_14__* %193)
  store i64 %194, i64* %22, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* %22, align 8
  %197 = and i64 %195, %196
  %198 = load i64, i64* %21, align 8
  %199 = load i64, i64* %22, align 8
  %200 = and i64 %198, %199
  %201 = icmp eq i64 %197, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %133
  br label %203

203:                                              ; preds = %202, %133
  br label %204

204:                                              ; preds = %203, %130
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %205, %struct.TYPE_13__** %4, align 8
  br label %206

206:                                              ; preds = %204, %33, %28
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %207
}

declare dso_local i64 @IsIP6(%struct.TYPE_14__*) #1

declare dso_local i64 @IPToUINT(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @ZeroMallocFast(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
