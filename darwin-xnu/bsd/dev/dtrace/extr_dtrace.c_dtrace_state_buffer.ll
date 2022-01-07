; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_state_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_INACTIVE = common dso_local global i64 0, align 8
@dtrace_anon = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i32 0, align 4
@DTRACEOPT_CPU = common dso_local global i64 0, align 8
@DTRACEOPT_SPECSIZE = common dso_local global i32 0, align 4
@DTRACEBUF_NOSWITCH = common dso_local global i32 0, align 4
@DTRACEOPT_BUFSIZE = common dso_local global i32 0, align 4
@DTRACEOPT_BUFPOLICY = common dso_local global i64 0, align 8
@DTRACEOPT_BUFPOLICY_RING = common dso_local global i32 0, align 4
@DTRACEBUF_RING = common dso_local global i32 0, align 4
@DTRACEOPT_BUFPOLICY_FILL = common dso_local global i32 0, align 4
@DTRACEBUF_FILL = common dso_local global i32 0, align 4
@DTRACEBUF_INACTIVE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@DTRACEOPT_BUFLIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DTRACEOPT_BUFRESIZE = common dso_local global i64 0, align 8
@DTRACEOPT_BUFRESIZE_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32)* @dtrace_state_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_buffer(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %21 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %20)
  %22 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %23 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @DTRACEOPT_MAX, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DTRACE_ACTIVITY_INACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %3
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dtrace_anon, i32 0, i32 0), align 8
  %37 = icmp eq %struct.TYPE_7__* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %3
  %47 = phi i1 [ true, %3 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %46
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %46
  store i32 0, i32* %4, align 4
  br label %197

65:                                               ; preds = %57
  %66 = load i32*, i32** %8, align 8
  %67 = load i64, i64* @DTRACEOPT_CPU, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DTRACEOPT_UNSET, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* @DTRACEOPT_CPU, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %65
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @DTRACEOPT_SPECSIZE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @DTRACEBUF_NOSWITCH, align 4
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @DTRACEOPT_BUFSIZE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %126

89:                                               ; preds = %85
  %90 = load i32*, i32** %8, align 8
  %91 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DTRACEOPT_BUFPOLICY_RING, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @DTRACEBUF_RING, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32*, i32** %8, align 8
  %102 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DTRACEOPT_BUFPOLICY_FILL, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @DTRACEBUF_FILL, align 4
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @dtrace_anon, i32 0, i32 0), align 8
  %114 = icmp ne %struct.TYPE_7__* %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115, %111
  %122 = load i32, i32* @DTRACEBUF_INACTIVE, align 4
  %123 = load i32, i32* %12, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125, %85
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %192, %126
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp uge i64 %134, 4
  br i1 %135, label %136, label %195

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = and i64 %138, 3
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = and i64 %143, 3
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = sub i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* @E2BIG, align 4
  store i32 %156, i32* %4, align 4
  br label %197

157:                                              ; preds = %149
  %158 = load i32*, i32** %8, align 8
  %159 = load i64, i64* @DTRACEOPT_BUFLIMIT, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 100
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %11, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %167 = load i64, i64* %11, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @dtrace_buffer_alloc(%struct.TYPE_8__* %166, i64 %167, i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %157
  %176 = load i32, i32* %9, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %4, align 4
  br label %197

182:                                              ; preds = %157
  %183 = load i32*, i32** %8, align 8
  %184 = load i64, i64* @DTRACEOPT_BUFRESIZE, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @DTRACEOPT_BUFRESIZE_MANUAL, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %4, align 4
  br label %197

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = ashr i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %132

195:                                              ; preds = %132
  %196 = load i32, i32* @ENOMEM, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %189, %175, %155, %64
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_buffer_alloc(%struct.TYPE_8__*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
