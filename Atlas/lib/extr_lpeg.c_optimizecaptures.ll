; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optimizecaptures.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_optimizecaptures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }

@IEnd = common dso_local global i64 0, align 8
@MAXOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @optimizecaptures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimizecaptures(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %176, %1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEnd, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %186

20:                                               ; preds = %10
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 %23
  %25 = call i64 @isjmp(%struct.TYPE_14__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dest(%struct.TYPE_14__* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @dest(%struct.TYPE_14__* %34, i32 %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %175

38:                                               ; preds = %27, %20
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %174

42:                                               ; preds = %38
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i64 %45
  %47 = call i64 @ismovablecap(%struct.TYPE_14__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %174

49:                                               ; preds = %42
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i64 1
  %55 = call i64 @ischeck(%struct.TYPE_14__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %174

57:                                               ; preds = %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = call i32 @getoff(%struct.TYPE_14__* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %3, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %94, %57
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 -1
  %74 = call i64 @ismovablecap(%struct.TYPE_14__* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %68, %64
  %77 = phi i1 [ false, %64 ], [ %75, %68 ]
  br i1 %77, label %78, label %95

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %9, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i64 %83
  %85 = call i32 @getoff(%struct.TYPE_14__* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %91
  %93 = call i32 @getoff(%struct.TYPE_14__* %92)
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %88, %78
  br label %64

95:                                               ; preds = %76
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 1
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @skipchecks(%struct.TYPE_14__* %100, i32 %101, i32* %6)
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %176

108:                                              ; preds = %95
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MAXOFF, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %3, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %117, %118
  br label %120

120:                                              ; preds = %116, %112, %108
  %121 = phi i1 [ false, %112 ], [ false, %108 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %140, %120
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %3, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = shl i32 %130, 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %131
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %129
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %125

143:                                              ; preds = %125
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i64 %146
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = call i32 @rotate(%struct.TYPE_14__* %147, i32 %150, i32 %154)
  %156 = load i32, i32* %5, align 4
  store i32 %156, i32* %3, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i64 %159
  %161 = call i64 @ischeck(%struct.TYPE_14__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %143
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i64 %166
  %168 = call i64 @iscapture(%struct.TYPE_14__* %167)
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %163, %143
  %171 = phi i1 [ false, %143 ], [ %169, %163 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  br label %174

174:                                              ; preds = %170, %49, %42, %38
  br label %175

175:                                              ; preds = %174, %33
  br label %176

176:                                              ; preds = %175, %107
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i64 %179
  %181 = call i64 @sizei(%struct.TYPE_14__* %180)
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %3, align 4
  br label %10

186:                                              ; preds = %10
  ret void
}

declare dso_local i64 @isjmp(%struct.TYPE_14__*) #1

declare dso_local i32 @dest(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ismovablecap(%struct.TYPE_14__*) #1

declare dso_local i64 @ischeck(%struct.TYPE_14__*) #1

declare dso_local i32 @getoff(%struct.TYPE_14__*) #1

declare dso_local i32 @skipchecks(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rotate(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @iscapture(%struct.TYPE_14__*) #1

declare dso_local i64 @sizei(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
