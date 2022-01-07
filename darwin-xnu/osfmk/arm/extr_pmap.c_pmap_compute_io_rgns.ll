; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_compute_io_rgns.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_compute_io_rgns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@kSuccess = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pmap-io-ranges\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"pmap I/O region %u addr 0x%llx is not page-aligned\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"pmap I/O region %u length 0x%x is not page-aligned\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"pmap I/O region %u addr 0x%llx length 0x%x wraps around\00", align 1
@io_rgn_start = common dso_local global i32 0, align 4
@io_rgn_end = common dso_local global i32 0, align 4
@num_io_rgns = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"pmap I/O region start is not page-aligned!\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"pmap I/O region end is not page-aligned!\0A\00", align 1
@gPhysBase = common dso_local global i32 0, align 4
@avail_end = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"pmap I/O region overlaps physical memory!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pmap_compute_io_rgns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_compute_io_rgns() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* null, i8** %5, align 8
  %9 = call i32 @DTLookupEntry(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %2)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @kSuccess, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @kSuccess, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @DTGetProperty(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %5, i32* %7)
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %177

20:                                               ; preds = %0
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %129, %20
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = udiv i64 %27, 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %132

30:                                               ; preds = %23
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PAGE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %47)
  br label %49

49:                                               ; preds = %40, %30
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %66)
  br label %68

68:                                               ; preds = %59, %49
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @os_add_overflow(i32 %74, i32 %80, i32* %4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %68
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %90, i32 %96)
  br label %98

98:                                               ; preds = %83, %68
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @io_rgn_start, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101, %98
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* @io_rgn_start, align 4
  br label %117

117:                                              ; preds = %110, %101
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @io_rgn_end, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120, %117
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* @io_rgn_end, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = load i32, i32* @num_io_rgns, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @num_io_rgns, align 4
  br label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %23

132:                                              ; preds = %23
  %133 = load i32, i32* @io_rgn_start, align 4
  %134 = load i32, i32* @PAGE_MASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i32, i32* @io_rgn_end, align 4
  %141 = load i32, i32* @PAGE_MASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i32, i32* @io_rgn_start, align 4
  %148 = load i32, i32* @gPhysBase, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* @io_rgn_end, align 4
  %152 = load i32, i32* @gPhysBase, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %170, label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* @io_rgn_start, align 4
  %156 = load i32, i32* @avail_end, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* @io_rgn_end, align 4
  %160 = load i32, i32* @avail_end, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %170, label %162

162:                                              ; preds = %158, %154
  %163 = load i32, i32* @io_rgn_start, align 4
  %164 = load i32, i32* @gPhysBase, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* @io_rgn_end, align 4
  %168 = load i32, i32* @avail_end, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166, %158, %150
  %171 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %166, %162
  %173 = load i32, i32* @num_io_rgns, align 4
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %1, align 4
  br label %177

177:                                              ; preds = %172, %19
  %178 = load i32, i32* %1, align 4
  ret i32 %178
}

declare dso_local i32 @DTLookupEntry(i32*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @os_add_overflow(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
