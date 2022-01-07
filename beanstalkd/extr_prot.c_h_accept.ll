; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_h_accept.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_h_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__* }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"accept()\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"accept %d\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"getting flags\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"close %d\0A\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"setting O_NONBLOCK\00", align 1
@STATE_WANT_COMMAND = common dso_local global i32 0, align 4
@default_tube = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"make_conn() failed\00", align 1
@prothandle = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"sockwant\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h_accept(i32 %0, i16 signext %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i32* %2, i32** %6, align 8
  %13 = load i16, i16* %5, align 2
  %14 = call i32 @UNUSED_PARAMETER(i16 signext %13)
  store i32 4, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %17 = call i32 @accept(i32 %15, %struct.sockaddr* %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EAGAIN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EWOULDBLOCK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @twarn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24, %20
  %31 = call i32 (...) @epollq_apply()
  br label %127

32:                                               ; preds = %3
  %33 = load i64, i64* @verbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @F_GETFL, align 4
  %41 = call i32 @fcntl(i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = call i32 @twarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i64, i64* @verbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %44
  %54 = call i32 (...) @epollq_apply()
  br label %127

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @F_SETFL, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @O_NONBLOCK, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @fcntl(i32 %56, i32 %57, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = call i32 @twarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @close(i32 %66)
  %68 = load i64, i64* @verbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %64
  %74 = call i32 (...) @epollq_apply()
  br label %127

75:                                               ; preds = %55
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @STATE_WANT_COMMAND, align 4
  %78 = load i32, i32* @default_tube, align 4
  %79 = load i32, i32* @default_tube, align 4
  %80 = call %struct.TYPE_4__* @make_conn(i32 %76, i32 %77, i32 %78, i32 %79)
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %12, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %75
  %84 = call i32 @twarnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @close(i32 %85)
  %87 = load i64, i64* @verbose, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %83
  %93 = call i32 (...) @epollq_apply()
  br label %127

94:                                               ; preds = %75
  %95 = load i32*, i32** %6, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %101, align 8
  %102 = load i64, i64* @prothandle, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @sockwant(%struct.TYPE_5__* %111, i8 signext 114)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %125

115:                                              ; preds = %94
  %116 = call i32 @twarn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @close(i32 %117)
  %119 = load i64, i64* @verbose, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %115
  br label %125

125:                                              ; preds = %124, %94
  %126 = call i32 (...) @epollq_apply()
  br label %127

127:                                              ; preds = %125, %92, %73, %53, %30
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i16 signext) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @epollq_apply(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.TYPE_4__* @make_conn(i32, i32, i32, i32) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @sockwant(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
