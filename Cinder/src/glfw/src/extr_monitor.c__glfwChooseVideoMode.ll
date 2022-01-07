; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c__glfwChooseVideoMode.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_monitor.c__glfwChooseVideoMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, i32, i32, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@GLFW_DONT_CARE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @_glfwChooseVideoMode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %15 = load i32, i32* @UINT_MAX, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @UINT_MAX, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @UINT_MAX, align 4
  store i32 %17, i32* %12, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = call i32 @refreshVideoModes(%struct.TYPE_7__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %180

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %175, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %178

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %11, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GLFW_DONT_CARE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @abs(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %41, %29
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GLFW_DONT_CARE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @abs(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %59, %53
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @GLFW_DONT_CARE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @abs(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %77, %71
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %99, %102
  %104 = mul nsw i32 %96, %103
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %114, %117
  %119 = mul nsw i32 %111, %118
  %120 = add nsw i32 %104, %119
  %121 = call i32 @abs(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @GLFW_DONT_CARE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %89
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = trunc i64 %134 to i32
  %136 = call i32 @abs(i32 %135)
  store i32 %136, i32* %9, align 4
  br label %145

137:                                              ; preds = %89
  %138 = load i32, i32* @UINT_MAX, align 4
  %139 = zext i32 %138 to i64
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %139, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %137, %127
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %169, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %169, label %157

157:                                              ; preds = %153, %149
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %157
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165, %153, %145
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %170, %struct.TYPE_8__** %14, align 8
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %169, %165, %161, %157
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %23

178:                                              ; preds = %23
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %3, align 8
  br label %180

180:                                              ; preds = %178, %21
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %181
}

declare dso_local i32 @refreshVideoModes(%struct.TYPE_7__*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
