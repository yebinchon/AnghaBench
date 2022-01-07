; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_allocbuf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_allocbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@CLBYTES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@MAXBSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"allocbuf: buffer larger than MAXBSIZE requested\00", align 1
@B_META = common dso_local global i32 0, align 4
@MINMETA = common dso_local global i32 0, align 4
@B_ZALLOC = common dso_local global i32 0, align 4
@MAXMETA = common dso_local global i32 0, align 4
@kernel_map = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"allocbuf: NULL b_datap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocbuf(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CLBYTES, align 4
  %11 = call i8* @roundup(i32 %9, i32 %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @MAXBSIZE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @B_META, align 4
  %29 = call i64 @ISSET(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %179

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MINMETA, align 4
  %34 = call i8* @roundup(i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %146

40:                                               ; preds = %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @B_ZALLOC, align 4
  %48 = call i64 @ISSET(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %107

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %101

56:                                               ; preds = %50
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @getbufzone(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MAXMETA, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i8* @grab_memory_for_meta_buf(i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = bitcast i64* %70 to i8**
  store i8* %68, i8** %71, align 8
  br label %86

72:                                               ; preds = %56
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @kernel_map, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %80 = call i32 @kmem_alloc_kobject(i32 %75, i64* %77, i64 %78, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @B_ZALLOC, align 4
  %85 = call i32 @CLR(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %72, %64
  %87 = load i64, i64* %7, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @bcopy(i8* %88, i32 %92, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i64, i64* %7, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @zfree(i32 %97, i8* %99)
  br label %106

101:                                              ; preds = %50
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %101, %86
  br label %145

107:                                              ; preds = %40
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %5, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %107
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @kernel_map, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %5, align 8
  %121 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %122 = call i32 @kmem_alloc_kobject(i32 %117, i64* %119, i64 %120, i32 %121)
  %123 = load i64, i64* %7, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bcopy(i8* %124, i32 %128, i32 %131)
  %133 = load i32, i32* @kernel_map, align 4
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @kmem_free(i32 %133, i64 %134, i32 %137)
  br label %144

139:                                              ; preds = %107
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %139, %114
  br label %145

145:                                              ; preds = %144, %106
  br label %171

146:                                              ; preds = %31
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @MAXMETA, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i8* @grab_memory_for_meta_buf(i32 %153)
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = bitcast i64* %156 to i8**
  store i8* %154, i8** %157, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @B_ZALLOC, align 4
  %162 = call i32 @SET(i32 %160, i32 %161)
  br label %170

163:                                              ; preds = %146
  %164 = load i32, i32* @kernel_map, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i64, i64* %5, align 8
  %168 = load i32, i32* @VM_KERN_MEMORY_FILE, align 4
  %169 = call i32 @kmem_alloc_kobject(i32 %164, i64* %166, i64 %167, i32 %168)
  br label %170

170:                                              ; preds = %163, %150
  br label %171

171:                                              ; preds = %170, %145
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %171
  br label %179

179:                                              ; preds = %178, %24
  %180 = load i64, i64* %5, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  ret i32 0
}

declare dso_local i8* @roundup(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @getbufzone(i32) #1

declare dso_local i8* @grab_memory_for_meta_buf(i32) #1

declare dso_local i32 @kmem_alloc_kobject(i32, i64*, i64, i32) #1

declare dso_local i32 @CLR(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @zfree(i32, i8*) #1

declare dso_local i32 @kmem_free(i32, i64, i32) #1

declare dso_local i32 @SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
