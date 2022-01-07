; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_strategy_fragmented.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_strategy_fragmented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i64, i64, i64 }

@B_READ = common dso_local global i32 0, align 4
@VNODE_READ = common dso_local global i32 0, align 4
@VNODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i64, i64)* @buf_strategy_fragmented to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_strategy_fragmented(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = call %struct.TYPE_16__* @buf_vnode(%struct.TYPE_17__* %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %14, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = call %struct.TYPE_17__* @alloc_io_buf(%struct.TYPE_16__* %27, i32 0)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @B_READ, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* %8, align 8
  store i64 %47, i64* %13, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @B_READ, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %4
  %55 = load i32, i32* @VNODE_READ, align 4
  store i32 %55, i32* %16, align 4
  br label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @VNODE_WRITE, align 4
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %148, %58
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %13, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @bzero(i32 %66, i32 %68)
  br label %124

70:                                               ; preds = %59
  %71 = load i64, i64* %13, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @buf_reset(%struct.TYPE_17__* %84, i32 %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @B_READ, align 4
  %91 = call i32 @ISSET(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %70
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i32 @OSAddAtomic(i32 1, i32* %95)
  br label %97

97:                                               ; preds = %93, %70
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %99 = call i32 @VNOP_STRATEGY(%struct.TYPE_17__* %98)
  store i32 %99, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %149

102:                                              ; preds = %97
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = call i64 @buf_biowait(%struct.TYPE_17__* %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %149

108:                                              ; preds = %102
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %114, %117
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %149

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %62
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %12, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %149

132:                                              ; preds = %124
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, %136
  store i64 %140, i64* %138, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @VNOP_BLOCKMAP(%struct.TYPE_16__* %141, i64 %142, i32 %143, i32* %14, i64* %13, i32* null, i32 %144, i32* null)
  store i32 %145, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %132
  br label %149

148:                                              ; preds = %132
  br label %59

149:                                              ; preds = %147, %131, %113, %107, %101
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = call i32 @buf_free(%struct.TYPE_17__* %150)
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @buf_seterror(%struct.TYPE_17__* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %149
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = call i32 @buf_biodone(%struct.TYPE_17__* %163)
  %165 = load i32, i32* %15, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_16__* @buf_vnode(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @alloc_io_buf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @buf_reset(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @VNOP_STRATEGY(%struct.TYPE_17__*) #1

declare dso_local i64 @buf_biowait(%struct.TYPE_17__*) #1

declare dso_local i32 @VNOP_BLOCKMAP(%struct.TYPE_16__*, i64, i32, i32*, i64*, i32*, i32, i32*) #1

declare dso_local i32 @buf_free(%struct.TYPE_17__*) #1

declare dso_local i32 @buf_seterror(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @buf_biodone(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
