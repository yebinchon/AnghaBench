; ModuleID = '/home/carl/AnghaBench/disque/src/extr_dict.c_dictGetSomeKeys.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_dict.c_dictGetSomeKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dictGetSomeKeys(%struct.TYPE_11__* %0, %struct.TYPE_10__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = call i32 @dictSize(%struct.TYPE_11__* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i32 @dictSize(%struct.TYPE_11__* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %7, align 4
  %25 = mul i32 %24, 10
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %39, %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i64 @dictIsRehashing(%struct.TYPE_11__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = call i32 @_dictRehashStep(%struct.TYPE_11__* %35)
  br label %38

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %26

42:                                               ; preds = %37, %26
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = call i64 @dictIsRehashing(%struct.TYPE_11__* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %72

56:                                               ; preds = %42
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %57, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %65, %56, %42
  %73 = call i32 (...) @random()
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %183, %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %12, align 4
  %83 = icmp ne i32 %81, 0
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %188

86:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %180, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %183

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %94
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp uge i32 %104, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %112, %103
  br label %180

117:                                              ; preds = %97, %94, %91
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp uge i32 %118, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %180

129:                                              ; preds = %117
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %137, i64 %139
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %15, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %143 = icmp eq %struct.TYPE_10__* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %129
  %145 = load i32, i32* %14, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp uge i32 %147, 5
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ugt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = call i32 (...) @random()
  %155 = load i32, i32* %11, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %157

157:                                              ; preds = %153, %149, %144
  br label %179

158:                                              ; preds = %129
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %177, %158
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %161 = icmp ne %struct.TYPE_10__* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %164, align 8
  %165 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %165, i32 1
  store %struct.TYPE_10__** %166, %struct.TYPE_10__*** %6, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  store %struct.TYPE_10__* %169, %struct.TYPE_10__** %15, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %4, align 4
  br label %190

177:                                              ; preds = %162
  br label %159

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178, %157
  br label %180

180:                                              ; preds = %179, %128, %116
  %181 = load i32, i32* %8, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %87

183:                                              ; preds = %87
  %184 = load i32, i32* %13, align 4
  %185 = add i32 %184, 1
  %186 = load i32, i32* %11, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %13, align 4
  br label %76

188:                                              ; preds = %84
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %188, %175
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @dictSize(%struct.TYPE_11__*) #1

declare dso_local i64 @dictIsRehashing(%struct.TYPE_11__*) #1

declare dso_local i32 @_dictRehashStep(%struct.TYPE_11__*) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
