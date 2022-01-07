; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_mutex_unlock.c_pthread_mutex_unlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_mutex_unlock.c_pthread_mutex_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_9__* null, align 8
@PTHREAD_MUTEX_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PTW32_ROBUST_NOTRECOVERABLE = common dso_local global i64 0, align 8
@PTW32_ROBUST_INCONSISTENT = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_unlock(%struct.TYPE_9__** %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %12 = icmp ult %struct.TYPE_9__* %10, %11
  br i1 %12, label %13, label %164

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = ptrtoint i32* %25 to i32
  %27 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %26, i32 0)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @SetEvent(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %33
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %42, %23
  br label %85

44:                                               ; preds = %19
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 5
  %47 = call i32 (...) @pthread_self()
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @pthread_equal(i32* %49, i32 %47)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = icmp eq i64 0, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56, %52
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = ptrtoint i32* %67 to i32
  %69 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %68, i32 0)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @SetEvent(i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %56
  br label %84

82:                                               ; preds = %44
  %83 = load i32, i32* @EPERM, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %81
  br label %85

85:                                               ; preds = %84, %43
  br label %163

86:                                               ; preds = %13
  %87 = call i32 (...) @pthread_self()
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 0, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 5
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @pthread_equal(i32* %95, i32 %93)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %160

98:                                               ; preds = %86
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = ptrtoint i32* %102 to i32
  %104 = load i64, i64* @PTW32_ROBUST_NOTRECOVERABLE, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* @PTW32_ROBUST_INCONSISTENT, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %103, i32 %105, i32 %107)
  %109 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %98
  %113 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %114 = call i32 @ptw32_robust_mutex_remove(%struct.TYPE_9__** %113, i32* null)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = ptrtoint i32* %116 to i32
  %118 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %117, i32 0)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @SetEvent(i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %120
  br label %129

129:                                              ; preds = %128, %112
  br label %159

130:                                              ; preds = %98
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  %139 = icmp eq i64 0, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %134, %130
  %141 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %142 = call i32 @ptw32_robust_mutex_remove(%struct.TYPE_9__** %141, i32* null)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = ptrtoint i32* %144 to i32
  %146 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %145, i32 0)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @SetEvent(i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %148
  br label %157

157:                                              ; preds = %156, %140
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %129
  br label %162

160:                                              ; preds = %86
  %161 = load i32, i32* @EPERM, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %159
  br label %163

163:                                              ; preds = %162, %85
  br label %171

164:                                              ; preds = %1
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PTHREAD_MUTEX_INITIALIZER, align 8
  %167 = icmp ne %struct.TYPE_9__* %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %164
  br label %171

171:                                              ; preds = %170, %163
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32, i32) #1

declare dso_local i64 @SetEvent(i32) #1

declare dso_local i64 @pthread_equal(i32*, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i32, i32) #1

declare dso_local i32 @ptw32_robust_mutex_remove(%struct.TYPE_9__**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
