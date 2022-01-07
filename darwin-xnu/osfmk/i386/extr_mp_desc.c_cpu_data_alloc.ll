; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_data_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_cpu_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32*, %struct.cpu_desc_table*, i32*, i8*, i64, i32*, %struct.TYPE_10__*, i32, i32* }
%struct.cpu_desc_table = type { i32 }

@real_ncpus = common dso_local global i32 0, align 4
@ncpus_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@dyn_ldts = common dso_local global %struct.TYPE_11__* null, align 8
@scdatas = common dso_local global %struct.TYPE_10__* null, align 8
@cpshadows = common dso_local global i32* null, align 8
@kernel_map = common dso_local global i32 0, align 4
@INTSTACK_SIZE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_CPU = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cpu_data_alloc() int stack failed, ret=%d\0A\00", align 1
@scdtables = common dso_local global i32* null, align 8
@MAX_CPUS = common dso_local global i32 0, align 4
@LDTSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"cpu_data_alloc() ldt failed, kmem_alloc=%d\0A\00", align 1
@ldt_alias_offset = common dso_local global i32 0, align 4
@pal_rtc_nanotime_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"cpu_data_alloc(%d) %p desc_table: %p ldt: %p int_stack: 0x%lx-0x%lx\0A\00", align 1
@cpu_data_ptr = common dso_local global %struct.TYPE_10__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @cpu_data_alloc(i8* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @real_ncpus, align 4
  %16 = icmp eq i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.TYPE_10__* @cpu_datap(i32 0)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %5, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 10
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = call i32 @simple_lock_init(i32* @ncpus_lock, i32 0)
  %26 = load i8*, i8** @TRUE, align 8
  %27 = call i32* @cpu_processor_alloc(i8* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 10
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %24, %14
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %2, align 8
  br label %190

32:                                               ; preds = %1
  %33 = load i8*, i8** @FALSE, align 8
  store i8* %33, i8** %6, align 8
  %34 = call i32 @simple_lock(i32* @ncpus_lock)
  %35 = load i32, i32* @real_ncpus, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @real_ncpus, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @real_ncpus, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dyn_ldts, align 8
  %39 = icmp eq %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** @TRUE, align 8
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %40, %32
  %43 = call i32 @simple_unlock(i32* @ncpus_lock)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @scdatas, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = bitcast %struct.TYPE_10__* %48 to i8*
  %50 = call i32 @bzero(i8* %49, i32 80)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** @cpshadows, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 7
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @kernel_map, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* @INTSTACK_SIZE, align 4
  %67 = load i32, i32* @VM_KERN_MEMORY_CPU, align 4
  %68 = call i32 @kmem_alloc(i32 %63, i32* %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @KERN_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %42
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %42
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @INTSTACK_SIZE, align 4
  %82 = call i32 @bzero(i8* %80, i32 %81)
  %83 = load i32, i32* @INTSTACK_SIZE, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** @scdtables, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = bitcast i32* %91 to %struct.cpu_desc_table*
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  store %struct.cpu_desc_table* %92, %struct.cpu_desc_table** %94, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %142

97:                                               ; preds = %75
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %99 = load i32, i32* @MAX_CPUS, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = load i32, i32* @LDTSZ, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %101, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @round_page_64(i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* @kernel_map, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @VM_KERN_MEMORY_CPU, align 4
  %110 = call i32 @kmem_alloc(i32 %107, i32* %10, i32 %108, i32 %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @KERN_SUCCESS, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %97
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %97
  %118 = call i32 @simple_lock(i32* @ncpus_lock)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dyn_ldts, align 8
  %120 = icmp eq %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** @dyn_ldts, align 8
  br label %127

125:                                              ; preds = %117
  %126 = load i8*, i8** @TRUE, align 8
  store i8* %126, i8** %8, align 8
  br label %127

127:                                              ; preds = %125, %121
  %128 = call i32 @simple_unlock(i32* @ncpus_lock)
  %129 = load i8*, i8** %8, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* @kernel_map, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @kmem_free(i32 %132, i32 %133, i32 %134)
  br label %141

136:                                              ; preds = %127
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @dyn_dblmap(i32 %137, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* @ldt_alias_offset, align 4
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %75
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dyn_ldts, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 6
  store i64 %155, i64* %157, align 8
  %158 = load i8*, i8** @TRUE, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 4
  store i32* @pal_rtc_nanotime_info, i32** %162, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 3
  %169 = load %struct.cpu_desc_table*, %struct.cpu_desc_table** %168, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @INTSTACK_SIZE, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = call i32 @kprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %165, %struct.TYPE_10__* %166, %struct.cpu_desc_table* %169, i32* %172, i64 %178, i64 %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %185 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @cpu_data_ptr, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %185, i64 %187
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %189, %struct.TYPE_10__** %2, align 8
  br label %190

190:                                              ; preds = %142, %30
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %191
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @cpu_datap(i32) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i32* @cpu_processor_alloc(i8*) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @kmem_alloc(i32, i32*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @round_page_64(i32) #1

declare dso_local i32 @kmem_free(i32, i32, i32) #1

declare dso_local i32 @dyn_dblmap(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32, %struct.TYPE_10__*, %struct.cpu_desc_table*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
