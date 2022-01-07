; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btpbuf.c_btpbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i32, i32, i8*, %struct.pbuf*, i32* }

@TRANSPORT_HLEN = common dso_local global i32 0, align 4
@LL_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"btpbuf_alloc: bad pbuf layer.\0A\00", align 1
@pool_pbufs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"btbtpbuf_alloc: couldn't allocate pbuf(p) from pool\0A\00", align 1
@PBUF_POOL_BUFSIZE = common dso_local global i32 0, align 4
@PBUF_FLAG_POOL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"btpbuf_alloc: couldn't allocate pbuf(q) from pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"btpbuf_alloc: couldn't allocate pbuf from ram\0A\00", align 1
@PBUF_FLAG_RAM = common dso_local global i8* null, align 8
@rom_pbufs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"btpbuf_alloc: couldn't allocate pbuf from rom/ref\0A\00", align 1
@PBUF_FLAG_ROM = common dso_local global i8* null, align 8
@PBUF_FLAG_REF = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"btpbuf_alloc: bad flag value.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pbuf* @btpbuf_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pbuf*, align 8
  %11 = alloca %struct.pbuf*, align 8
  %12 = alloca %struct.pbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %23 [
    i32 128, label %14
    i32 134, label %18
    i32 131, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @TRANSPORT_HLEN, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %3, %14
  %19 = load i32, i32* @LL_HLEN, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  br label %25

23:                                               ; preds = %3
  %24 = call i32 @ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %185 [
    i32 133, label %27
    i32 132, label %124
    i32 129, label %159
    i32 130, label %159
  ]

27:                                               ; preds = %25
  %28 = call %struct.pbuf* @btmemb_alloc(i32* @pool_pbufs)
  store %struct.pbuf* %28, %struct.pbuf** %10, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %30 = icmp eq %struct.pbuf* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

33:                                               ; preds = %27
  %34 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i32 0, i32 4
  store %struct.pbuf* null, %struct.pbuf** %35, align 8
  %36 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %37 = bitcast %struct.pbuf* %36 to i8*
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 40, %39
  %41 = getelementptr i8, i8* %37, i64 %40
  %42 = call i8* @MEM_ALIGN(i8* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  br label %60

58:                                               ; preds = %33
  %59 = load i32, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  %62 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i8*, i8** @PBUF_FLAG_POOL, align 8
  %65 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %66 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  store %struct.pbuf* %69, %struct.pbuf** %12, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %102, %60
  %76 = load i32, i32* %9, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %75
  %79 = call %struct.pbuf* @btmemb_alloc(i32* @pool_pbufs)
  store %struct.pbuf* %79, %struct.pbuf** %11, align 8
  %80 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %81 = icmp eq %struct.pbuf* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = call i32 @ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %85 = call i32 @btpbuf_free(%struct.pbuf* %84)
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

86:                                               ; preds = %78
  %87 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %88 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %87, i32 0, i32 4
  store %struct.pbuf* null, %struct.pbuf** %88, align 8
  %89 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %90 = load %struct.pbuf*, %struct.pbuf** %12, align 8
  %91 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %90, i32 0, i32 4
  store %struct.pbuf* %89, %struct.pbuf** %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %94 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %86
  %99 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  br label %102

100:                                              ; preds = %86
  %101 = load i32, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %105 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %107 = bitcast %struct.pbuf* %106 to i8*
  %108 = getelementptr i8, i8* %107, i64 40
  %109 = bitcast i8* %108 to i32*
  %110 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %111 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %110, i32 0, i32 5
  store i32* %109, i32** %111, align 8
  %112 = load i8*, i8** @PBUF_FLAG_POOL, align 8
  %113 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %114 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %116 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %115, i32 0, i32 2
  store i32 1, i32* %116, align 8
  %117 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  %118 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.pbuf*, %struct.pbuf** %11, align 8
  store %struct.pbuf* %122, %struct.pbuf** %12, align 8
  br label %75

123:                                              ; preds = %75
  br label %187

124:                                              ; preds = %25
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 40, %126
  %128 = trunc i64 %127 to i32
  %129 = call i64 @MEM_ALIGN_SIZE(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = call i64 @MEM_ALIGN_SIZE(i32 %130)
  %132 = add nsw i64 %129, %131
  %133 = call %struct.pbuf* @btmemr_malloc(i64 %132)
  store %struct.pbuf* %133, %struct.pbuf** %10, align 8
  %134 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %135 = icmp eq %struct.pbuf* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = call i32 @ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

138:                                              ; preds = %124
  %139 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %140 = bitcast %struct.pbuf* %139 to i8*
  %141 = getelementptr i8, i8* %140, i64 40
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr i8, i8* %141, i64 %143
  %145 = call i8* @MEM_ALIGN(i8* %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %148 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %147, i32 0, i32 5
  store i32* %146, i32** %148, align 8
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %151 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %153 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %155 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %154, i32 0, i32 4
  store %struct.pbuf* null, %struct.pbuf** %155, align 8
  %156 = load i8*, i8** @PBUF_FLAG_RAM, align 8
  %157 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %158 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  br label %187

159:                                              ; preds = %25, %25
  %160 = call %struct.pbuf* @btmemb_alloc(i32* @rom_pbufs)
  store %struct.pbuf* %160, %struct.pbuf** %10, align 8
  %161 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %162 = icmp eq %struct.pbuf* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 @ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

165:                                              ; preds = %159
  %166 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %167 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %166, i32 0, i32 5
  store i32* null, i32** %167, align 8
  %168 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %169 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %168, i32 0, i32 4
  store %struct.pbuf* null, %struct.pbuf** %169, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %172 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %174 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 129
  br i1 %176, label %177, label %179

177:                                              ; preds = %165
  %178 = load i8*, i8** @PBUF_FLAG_ROM, align 8
  br label %181

179:                                              ; preds = %165
  %180 = load i8*, i8** @PBUF_FLAG_REF, align 8
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i8* [ %178, %177 ], [ %180, %179 ]
  %183 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %184 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  br label %187

185:                                              ; preds = %25
  %186 = call i32 @ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %191

187:                                              ; preds = %181, %138, %123
  %188 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  %189 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %188, i32 0, i32 2
  store i32 1, i32* %189, align 8
  %190 = load %struct.pbuf*, %struct.pbuf** %10, align 8
  store %struct.pbuf* %190, %struct.pbuf** %4, align 8
  br label %191

191:                                              ; preds = %187, %185, %163, %136, %82, %31, %23
  %192 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  ret %struct.pbuf* %192
}

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @btmemb_alloc(i32*) #1

declare dso_local i8* @MEM_ALIGN(i8*) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

declare dso_local %struct.pbuf* @btmemr_malloc(i64) #1

declare dso_local i64 @MEM_ALIGN_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
