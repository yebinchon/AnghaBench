; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32*, i32*, i64, i64 }

@dtrace_buffer_memory_inuse = common dso_local global i64 0, align 8
@cpu_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_nonroot_maxsize = common dso_local global i64 0, align 8
@PRIV_ALL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@cpu_list = common dso_local global %struct.TYPE_5__* null, align 8
@DTRACE_CPUALL = common dso_local global i64 0, align 8
@KM_NOSLEEP = common dso_local global i32 0, align 4
@DTRACEBUF_NOSWITCH = common dso_local global i32 0, align 4
@dtrace_buffer_memory_maxsize = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64, i32, i64)* @dtrace_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_buffer_alloc(%struct.TYPE_6__* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @dtrace_buffer_memory_inuse, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %16)
  %18 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %18)
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @dtrace_nonroot_maxsize, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = call i32 (...) @CRED()
  %25 = load i32, i32* @PRIV_ALL, align 4
  %26 = load i64, i64* @B_FALSE, align 8
  %27 = call i32 @PRIV_POLICY_CHOICE(i32 %24, i32 %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EFBIG, align 4
  store i32 %30, i32* %6, align 4
  br label %225

31:                                               ; preds = %23, %5
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_list, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %12, align 8
  br label %33

33:                                               ; preds = %137, %31
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @DTRACE_CPUALL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %137

44:                                               ; preds = %37, %33
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %48
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %13, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  br label %137

62:                                               ; preds = %44
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @dtrace_buffer_canalloc(i64 %69)
  %71 = load i64, i64* @B_FALSE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %149

74:                                               ; preds = %62
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* @KM_NOSLEEP, align 4
  %77 = call i8* @kmem_zalloc(i64 %75, i32 %76)
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i32* %78, i32** %80, align 8
  %81 = icmp eq i32* %78, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %149

83:                                               ; preds = %74
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @dtrace_buffer_memory_inuse, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* @dtrace_buffer_memory_inuse, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %91, 1
  br label %95

93:                                               ; preds = %83
  %94 = load i64, i64* %8, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i64 [ %92, %90 ], [ %94, %93 ]
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 7
  store i64 0, i64* %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 6
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @DTRACEBUF_NOSWITCH, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %95
  br label %137

118:                                              ; preds = %95
  %119 = load i64, i64* %9, align 8
  %120 = call i64 @dtrace_buffer_canalloc(i64 %119)
  %121 = load i64, i64* @B_FALSE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %149

124:                                              ; preds = %118
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* @KM_NOSLEEP, align 4
  %127 = call i8* @kmem_zalloc(i64 %125, i32 %126)
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 4
  store i32* %128, i32** %130, align 8
  %131 = icmp eq i32* %128, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %149

133:                                              ; preds = %124
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @dtrace_buffer_memory_inuse, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* @dtrace_buffer_memory_inuse, align 8
  br label %137

137:                                              ; preds = %133, %117, %54, %43
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %12, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_list, align 8
  %142 = icmp ne %struct.TYPE_5__* %140, %141
  br i1 %142, label %33, label %143

143:                                              ; preds = %137
  %144 = load i64, i64* @dtrace_buffer_memory_inuse, align 8
  %145 = load i64, i64* @dtrace_buffer_memory_maxsize, align 8
  %146 = icmp ule i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ASSERT(i32 %147)
  store i32 0, i32* %6, align 4
  br label %225

149:                                              ; preds = %132, %123, %82, %73
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_list, align 8
  store %struct.TYPE_5__* %150, %struct.TYPE_5__** %12, align 8
  br label %151

151:                                              ; preds = %216, %149
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* @DTRACE_CPUALL, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %156, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %216

162:                                              ; preds = %155, %151
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %166
  store %struct.TYPE_6__* %167, %struct.TYPE_6__** %13, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %191

172:                                              ; preds = %162
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  %177 = zext i1 %176 to i32
  %178 = call i32 @ASSERT(i32 %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %9, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @ASSERT(i32 %184)
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @kmem_free(i32* %188, i64 %189)
  br label %191

191:                                              ; preds = %172, %162
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = icmp eq i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @ASSERT(i32 %202)
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* %9, align 8
  %208 = call i32 @kmem_free(i32* %206, i64 %207)
  br label %209

209:                                              ; preds = %196, %191
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  store i32* null, i32** %211, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 4
  store i32* null, i32** %213, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i64 0, i64* %215, align 8
  br label %216

216:                                              ; preds = %209, %161
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  store %struct.TYPE_5__* %219, %struct.TYPE_5__** %12, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cpu_list, align 8
  %221 = icmp ne %struct.TYPE_5__* %219, %220
  br i1 %221, label %151, label %222

222:                                              ; preds = %216
  %223 = load i64, i64* %14, align 8
  store i64 %223, i64* @dtrace_buffer_memory_inuse, align 8
  %224 = load i32, i32* @ENOMEM, align 4
  store i32 %224, i32* %6, align 4
  br label %225

225:                                              ; preds = %222, %143, %29
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @PRIV_POLICY_CHOICE(i32, i32, i64) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dtrace_buffer_canalloc(i64) #1

declare dso_local i8* @kmem_zalloc(i64, i32) #1

declare dso_local i32 @kmem_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
