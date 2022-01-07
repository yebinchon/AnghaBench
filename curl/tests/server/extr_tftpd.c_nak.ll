; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_nak.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_nak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.tftphdr }
%struct.tftphdr = type { i32, i8*, i8* }
%struct.errmsg = type { i32, i32 }

@buf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@opcode_ERROR = common dso_local global i64 0, align 8
@errmsgs = common dso_local global %struct.errmsg* null, align 8
@EUNDEF = common dso_local global i8* null, align 8
@peer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nak: fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @nak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nak(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tftphdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.errmsg*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.tftphdr* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @buf, i32 0, i32 1), %struct.tftphdr** %3, align 8
  %6 = load i64, i64* @opcode_ERROR, align 8
  %7 = trunc i64 %6 to i16
  %8 = call i8* @htons(i16 zeroext %7)
  %9 = load %struct.tftphdr*, %struct.tftphdr** %3, align 8
  %10 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* %2, align 4
  %12 = trunc i32 %11 to i16
  %13 = call i8* @htons(i16 zeroext %12)
  %14 = load %struct.tftphdr*, %struct.tftphdr** %3, align 8
  %15 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.errmsg*, %struct.errmsg** @errmsgs, align 8
  store %struct.errmsg* %16, %struct.errmsg** %5, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %19 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %24 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %33

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %32 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %31, i32 1
  store %struct.errmsg* %32, %struct.errmsg** %5, align 8
  br label %17

33:                                               ; preds = %28, %17
  %34 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %35 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 100
  %41 = call i32 @strerror(i32 %40)
  %42 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %43 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** @EUNDEF, align 8
  %45 = load %struct.tftphdr*, %struct.tftphdr** %3, align 8
  %46 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %49 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strlen(i32 %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  %53 = load %struct.tftphdr*, %struct.tftphdr** %3, align 8
  %54 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.errmsg*, %struct.errmsg** %5, align 8
  %57 = getelementptr inbounds %struct.errmsg, %struct.errmsg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i32 @memcpy(i32 %55, i32 %58, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 5
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @peer, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @buf, i32 0, i32 0), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @swrite(i32 %64, i32* %66, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %47
  %72 = call i32 @logmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %47
  ret void
}

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @swrite(i32, i32*, i32) #1

declare dso_local i32 @logmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
