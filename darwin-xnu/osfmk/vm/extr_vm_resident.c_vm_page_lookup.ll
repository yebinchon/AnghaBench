; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__*, i32 }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@vm_page_buckets = common dso_local global %struct.TYPE_16__* null, align 8
@VM_PAGE_HASH_LOOKUP_THRESHOLD = common dso_local global i64 0, align 8
@vm_page_bucket_locks = common dso_local global i32* null, align 8
@BUCKETS_PER_LOCK = common dso_local global i32 0, align 4
@vm_page_lookup_stats = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @vm_page_lookup(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = call i32 @vm_object_lock_assert_held(%struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %3, align 8
  br label %215

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %6, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %28 = icmp ne %struct.TYPE_15__* %26, %27
  br i1 %28, label %29, label %102

29:                                               ; preds = %22
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = call %struct.TYPE_17__* @VM_PAGE_OBJECT(%struct.TYPE_15__* %30)
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = icmp eq %struct.TYPE_17__* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %3, align 8
  br label %215

43:                                               ; preds = %29
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 3
  %46 = call i64 @vm_page_queue_next(i32* %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @vm_page_queue_end(i32* %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %8, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %11, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = call %struct.TYPE_17__* @VM_PAGE_OBJECT(%struct.TYPE_15__* %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = icmp eq %struct.TYPE_17__* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %52
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %3, align 8
  br label %215

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71, %43
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = call i64 @vm_page_queue_prev(i32* %74)
  store i64 %75, i64* %8, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @vm_page_queue_end(i32* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %72
  %82 = load i64, i64* %8, align 8
  %83 = inttoptr i64 %82 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %12, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = call %struct.TYPE_17__* @VM_PAGE_OBJECT(%struct.TYPE_15__* %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = icmp eq %struct.TYPE_17__* %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %81
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  store %struct.TYPE_15__* %96, %struct.TYPE_15__** %98, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %3, align 8
  br label %215

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %72
  br label %102

102:                                              ; preds = %101, %22
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @vm_page_hash(%struct.TYPE_17__* %103, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vm_page_buckets, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 %108
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %7, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %102
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %3, align 8
  br label %215

116:                                              ; preds = %102
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @VM_PAGE_HASH_LOOKUP_THRESHOLD, align 8
  %121 = icmp sle i64 %119, %120
  br i1 %121, label %122, label %156

122:                                              ; preds = %116
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = call i64 @vm_page_queue_first(i32* %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %6, align 8
  br label %127

127:                                              ; preds = %142, %122
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = ptrtoint %struct.TYPE_15__* %130 to i64
  %132 = call i64 @vm_page_queue_end(i32* %129, i64 %131)
  %133 = icmp ne i64 %132, 0
  %134 = xor i1 %133, true
  br i1 %134, label %135, label %147

135:                                              ; preds = %127
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %147

142:                                              ; preds = %135
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  %145 = call i64 @vm_page_queue_next(i32* %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %146, %struct.TYPE_15__** %6, align 8
  br label %127

147:                                              ; preds = %141, %127
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = ptrtoint %struct.TYPE_15__* %150 to i64
  %152 = call i64 @vm_page_queue_end(i32* %149, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %155

155:                                              ; preds = %154, %147
  br label %199

156:                                              ; preds = %116
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = call i64 @VM_PAGE_PACK_OBJECT(%struct.TYPE_17__* %157)
  store i64 %158, i64* %13, align 8
  %159 = load i32*, i32** @vm_page_bucket_locks, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @BUCKETS_PER_LOCK, align 4
  %162 = sdiv i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  store i32* %164, i32** %9, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @lck_spin_lock(i32* %165)
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @VM_PAGE_UNPACK_PTR(i32 %169)
  %171 = inttoptr i64 %170 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %171, %struct.TYPE_15__** %6, align 8
  br label %172

172:                                              ; preds = %190, %156
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %175 = icmp ne %struct.TYPE_15__* %173, %174
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %176
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %5, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %196

189:                                              ; preds = %182, %176
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @VM_PAGE_UNPACK_PTR(i32 %193)
  %195 = inttoptr i64 %194 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %195, %struct.TYPE_15__** %6, align 8
  br label %172

196:                                              ; preds = %188, %172
  %197 = load i32*, i32** %9, align 8
  %198 = call i32 @lck_spin_unlock(i32* %197)
  br label %199

199:                                              ; preds = %196, %155
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_PAGE_NULL, align 8
  %202 = icmp ne %struct.TYPE_15__* %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = call %struct.TYPE_17__* @VM_PAGE_OBJECT(%struct.TYPE_15__* %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %207 = icmp eq %struct.TYPE_17__* %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @assert(i32 %208)
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  store %struct.TYPE_15__* %210, %struct.TYPE_15__** %212, align 8
  br label %213

213:                                              ; preds = %203, %199
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %214, %struct.TYPE_15__** %3, align 8
  br label %215

215:                                              ; preds = %213, %114, %95, %66, %41, %20
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %216
}

declare dso_local i32 @vm_object_lock_assert_held(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_17__* @VM_PAGE_OBJECT(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_page_queue_next(i32*) #1

declare dso_local i64 @vm_page_queue_end(i32*, i64) #1

declare dso_local i64 @vm_page_queue_prev(i32*) #1

declare dso_local i32 @vm_page_hash(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @vm_page_queue_first(i32*) #1

declare dso_local i64 @VM_PAGE_PACK_OBJECT(%struct.TYPE_17__*) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i64 @VM_PAGE_UNPACK_PTR(i32) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
