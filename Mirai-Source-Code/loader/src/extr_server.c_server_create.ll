; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_create.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_server_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.server*, %struct.server*, %struct.TYPE_2__**, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.server_worker = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.server_worker*, %struct.server_worker*, %struct.TYPE_2__**, i32, i32* }

@.str = private unnamed_addr constant [50 x i8] c"Failed to allocate establisted_connections array\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to allocate connection %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Failed to initialize epoll context. Error code %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@worker = common dso_local global i32 0, align 4
@timeout_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.server* @server_create(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.server*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.server*, align 8
  %17 = alloca %struct.server_worker*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.server_worker*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %20 = call i8* @calloc(i32 1, i32 88)
  %21 = bitcast i8* %20 to %struct.server*
  store %struct.server* %21, %struct.server** %16, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @calloc(i32 %22, i32 88)
  %24 = bitcast i8* %23 to %struct.server_worker*
  store %struct.server_worker* %24, %struct.server_worker** %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.server*, %struct.server** %16, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.server*, %struct.server** %16, align 8
  %30 = getelementptr inbounds %struct.server, %struct.server* %29, i32 0, i32 13
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.server*, %struct.server** %16, align 8
  %33 = getelementptr inbounds %struct.server, %struct.server* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.server*, %struct.server** %16, align 8
  %36 = getelementptr inbounds %struct.server, %struct.server* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.server*, %struct.server** %16, align 8
  %39 = getelementptr inbounds %struct.server, %struct.server* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = load %struct.server*, %struct.server** %16, align 8
  %42 = getelementptr inbounds %struct.server, %struct.server* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i8* @calloc(i32 %44, i32 8)
  %46 = bitcast i8* %45 to %struct.TYPE_2__**
  %47 = load %struct.server*, %struct.server** %16, align 8
  %48 = getelementptr inbounds %struct.server, %struct.server* %47, i32 0, i32 11
  store %struct.TYPE_2__** %46, %struct.TYPE_2__*** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i8* @calloc(i32 %49, i32 88)
  %51 = bitcast i8* %50 to %struct.server*
  %52 = load %struct.server*, %struct.server** %16, align 8
  %53 = getelementptr inbounds %struct.server, %struct.server* %52, i32 0, i32 9
  store %struct.server* %51, %struct.server** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.server*, %struct.server** %16, align 8
  %56 = getelementptr inbounds %struct.server, %struct.server* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.server*, %struct.server** %16, align 8
  %58 = getelementptr inbounds %struct.server, %struct.server* %57, i32 0, i32 11
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %58, align 8
  %60 = icmp eq %struct.TYPE_2__** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %7
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @exit(i32 0) #3
  unreachable

64:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %101, %64
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %67, 2
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = call i8* @calloc(i32 1, i32 4)
  %72 = bitcast i8* %71 to %struct.TYPE_2__*
  %73 = load %struct.server*, %struct.server** %16, align 8
  %74 = getelementptr inbounds %struct.server, %struct.server* %73, i32 0, i32 11
  %75 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %75, i64 %77
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.server*, %struct.server** %16, align 8
  %80 = getelementptr inbounds %struct.server, %struct.server* %79, i32 0, i32 11
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %83
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp eq %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %70
  %88 = load i32, i32* %18, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = call i32 @exit(i32 -1) #3
  unreachable

91:                                               ; preds = %70
  %92 = load %struct.server*, %struct.server** %16, align 8
  %93 = getelementptr inbounds %struct.server, %struct.server* %92, i32 0, i32 11
  %94 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %94, i64 %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @pthread_mutex_init(i32* %99, i32* null)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %65

104:                                              ; preds = %65
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %145, %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %148

109:                                              ; preds = %105
  %110 = load %struct.server*, %struct.server** %16, align 8
  %111 = getelementptr inbounds %struct.server, %struct.server* %110, i32 0, i32 9
  %112 = load %struct.server*, %struct.server** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.server, %struct.server* %112, i64 %114
  %116 = bitcast %struct.server* %115 to %struct.server_worker*
  store %struct.server_worker* %116, %struct.server_worker** %19, align 8
  %117 = load %struct.server*, %struct.server** %16, align 8
  %118 = bitcast %struct.server* %117 to %struct.server_worker*
  %119 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %120 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %119, i32 0, i32 10
  store %struct.server_worker* %118, %struct.server_worker** %120, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %123 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = call i32 @epoll_create1(i32 0)
  %125 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %126 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 8
  %127 = icmp eq i32 %124, -1
  br i1 %127, label %128, label %139

128:                                              ; preds = %109
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load %struct.server*, %struct.server** %16, align 8
  %132 = getelementptr inbounds %struct.server, %struct.server* %131, i32 0, i32 9
  %133 = load %struct.server*, %struct.server** %132, align 8
  %134 = bitcast %struct.server* %133 to %struct.server_worker*
  %135 = call i32 @free(%struct.server_worker* %134)
  %136 = load %struct.server*, %struct.server** %16, align 8
  %137 = bitcast %struct.server* %136 to %struct.server_worker*
  %138 = call i32 @free(%struct.server_worker* %137)
  store %struct.server* null, %struct.server** %8, align 8
  br label %156

139:                                              ; preds = %109
  %140 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %141 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %140, i32 0, i32 8
  %142 = load i32, i32* @worker, align 4
  %143 = load %struct.server_worker*, %struct.server_worker** %19, align 8
  %144 = call i32 @pthread_create(i32* %141, i32* null, i32 %142, %struct.server_worker* %143)
  br label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %105

148:                                              ; preds = %105
  %149 = load %struct.server*, %struct.server** %16, align 8
  %150 = getelementptr inbounds %struct.server, %struct.server* %149, i32 0, i32 7
  %151 = load i32, i32* @timeout_thread, align 4
  %152 = load %struct.server*, %struct.server** %16, align 8
  %153 = bitcast %struct.server* %152 to %struct.server_worker*
  %154 = call i32 @pthread_create(i32* %150, i32* null, i32 %151, %struct.server_worker* %153)
  %155 = load %struct.server*, %struct.server** %16, align 8
  store %struct.server* %155, %struct.server** %8, align 8
  br label %156

156:                                              ; preds = %148, %128
  %157 = load %struct.server*, %struct.server** %8, align 8
  ret %struct.server* %157
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @epoll_create1(i32) #1

declare dso_local i32 @free(%struct.server_worker*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.server_worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
