; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_T_VerticalDoor.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_T_VerticalDoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@sfx_bdcls = common dso_local global i32 0, align 4
@sfx_dorcls = common dso_local global i32 0, align 4
@sfx_doropn = common dso_local global i32 0, align 4
@pastdest = common dso_local global i32 0, align 4
@crushed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @T_VerticalDoor(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %184 [
    i32 0, label %7
    i32 2, label %47
    i32 -1, label %71
    i32 1, label %144
  ]

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %44 [
    i32 133, label %17
    i32 130, label %26
    i32 131, label %35
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* @sfx_bdcls, align 4
  %25 = call i32 @S_StartSound(i32* %23, i32 %24)
  br label %45

26:                                               ; preds = %13
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* @sfx_dorcls, align 4
  %34 = call i32 @S_StartSound(i32* %32, i32 %33)
  br label %45

35:                                               ; preds = %13
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* @sfx_doropn, align 4
  %43 = call i32 @S_StartSound(i32* %41, i32 %42)
  br label %45

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44, %35, %26, %17
  br label %46

46:                                               ; preds = %45, %7
  br label %184

47:                                               ; preds = %1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %68 [
    i32 128, label %57
  ]

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 130, i32* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* @sfx_doropn, align 4
  %67 = call i32 @S_StartSound(i32* %65, i32 %66)
  br label %69

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %47
  br label %184

71:                                               ; preds = %1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @T_MovePlane(%struct.TYPE_5__* %74, i32 %77, i32 %82, i32 0, i32 1, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @pastdest, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %123

90:                                               ; preds = %71
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %121 [
    i32 133, label %94
    i32 135, label %94
    i32 130, label %108
    i32 132, label %108
    i32 131, label %116
  ]

94:                                               ; preds = %90, %90
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = call i32 @P_RemoveThinker(i32* %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* @sfx_bdcls, align 4
  %107 = call i32 @S_StartSound(i32* %105, i32 %106)
  br label %122

108:                                              ; preds = %90, %90
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = call i32 @P_RemoveThinker(i32* %114)
  br label %122

116:                                              ; preds = %90
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 1050, i32* %120, align 4
  br label %122

121:                                              ; preds = %90
  br label %122

122:                                              ; preds = %121, %116, %108, %94
  br label %143

123:                                              ; preds = %71
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @crushed, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %123
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  switch i32 %130, label %132 [
    i32 135, label %131
    i32 132, label %131
  ]

131:                                              ; preds = %127, %127
  br label %141

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* @sfx_doropn, align 4
  %140 = call i32 @S_StartSound(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %132, %131
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %122
  br label %184

144:                                              ; preds = %1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @T_MovePlane(%struct.TYPE_5__* %147, i32 %150, i32 %153, i32 0, i32 1, i32 %156)
  store i32 %157, i32* %3, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @pastdest, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %183

161:                                              ; preds = %144
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  switch i32 %164, label %181 [
    i32 133, label %165
    i32 130, label %165
    i32 131, label %173
    i32 134, label %173
    i32 129, label %173
  ]

165:                                              ; preds = %161, %161
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %182

173:                                              ; preds = %161, %161, %161
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32* null, i32** %177, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = call i32 @P_RemoveThinker(i32* %179)
  br label %182

181:                                              ; preds = %161
  br label %182

182:                                              ; preds = %181, %173, %165
  br label %183

183:                                              ; preds = %182, %144
  br label %184

184:                                              ; preds = %1, %183, %143, %70, %46
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @T_MovePlane(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @P_RemoveThinker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
