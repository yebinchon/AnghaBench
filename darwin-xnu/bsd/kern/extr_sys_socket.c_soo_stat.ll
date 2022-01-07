; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_socket.c_soo_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_socket.c_soo_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.stat = type { i32, i64, i8*, i8* }
%struct.stat64 = type { i32, i64, i8*, i8* }

@S_IFSOCK = common dso_local global i8* null, align 8
@SS_CANTRCVMORE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@SS_CANTSENDMORE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soo_stat(%struct.socket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.stat64*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.stat* null, %struct.stat** %8, align 8
  store %struct.stat64* null, %struct.stat64** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.stat64*
  store %struct.stat64* %14, %struct.stat64** %9, align 8
  %15 = load %struct.stat64*, %struct.stat64** %9, align 8
  %16 = ptrtoint %struct.stat64* %15 to i32
  %17 = call i32 @bzero(i32 %16, i32 32)
  br label %24

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.stat*
  store %struct.stat* %20, %struct.stat** %8, align 8
  %21 = load %struct.stat*, %struct.stat** %8, align 8
  %22 = ptrtoint %struct.stat* %21 to i32
  %23 = call i32 @bzero(i32 %22, i32 32)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = call i32 @socket_lock(%struct.socket* %25, i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %97

29:                                               ; preds = %24
  %30 = load i8*, i8** @S_IFSOCK, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.stat64*, %struct.stat64** %9, align 8
  %33 = getelementptr inbounds %struct.stat64, %struct.stat64* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SS_CANTRCVMORE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40, %29
  %47 = load i32, i32* @S_IRUSR, align 4
  %48 = load i32, i32* @S_IRGRP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @S_IROTH, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.stat64*, %struct.stat64** %9, align 8
  %53 = getelementptr inbounds %struct.stat64, %struct.stat64* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %46, %40
  %57 = load %struct.socket*, %struct.socket** %4, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SS_CANTSENDMORE, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* @S_IWUSR, align 4
  %65 = load i32, i32* @S_IWGRP, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @S_IWOTH, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.stat64*, %struct.stat64** %9, align 8
  %70 = getelementptr inbounds %struct.stat64, %struct.stat64* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %63, %56
  %74 = load %struct.socket*, %struct.socket** %4, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.socket*, %struct.socket** %4, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %77, %81
  %83 = load %struct.stat64*, %struct.stat64** %9, align 8
  %84 = getelementptr inbounds %struct.stat64, %struct.stat64* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.socket*, %struct.socket** %4, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @kauth_cred_getuid(i32 %87)
  %89 = load %struct.stat64*, %struct.stat64** %9, align 8
  %90 = getelementptr inbounds %struct.stat64, %struct.stat64* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load %struct.socket*, %struct.socket** %4, align 8
  %92 = getelementptr inbounds %struct.socket, %struct.socket* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @kauth_cred_getgid(i32 %93)
  %95 = load %struct.stat64*, %struct.stat64** %9, align 8
  %96 = getelementptr inbounds %struct.stat64, %struct.stat64* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %165

97:                                               ; preds = %24
  %98 = load i8*, i8** @S_IFSOCK, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.stat*, %struct.stat** %8, align 8
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.socket*, %struct.socket** %4, align 8
  %103 = getelementptr inbounds %struct.socket, %struct.socket* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SS_CANTRCVMORE, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %97
  %109 = load %struct.socket*, %struct.socket** %4, align 8
  %110 = getelementptr inbounds %struct.socket, %struct.socket* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %108, %97
  %115 = load i32, i32* @S_IRUSR, align 4
  %116 = load i32, i32* @S_IRGRP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @S_IROTH, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.stat*, %struct.stat** %8, align 8
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %114, %108
  %125 = load %struct.socket*, %struct.socket** %4, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SS_CANTSENDMORE, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load i32, i32* @S_IWUSR, align 4
  %133 = load i32, i32* @S_IWGRP, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @S_IWOTH, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.stat*, %struct.stat** %8, align 8
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %131, %124
  %142 = load %struct.socket*, %struct.socket** %4, align 8
  %143 = getelementptr inbounds %struct.socket, %struct.socket* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.socket*, %struct.socket** %4, align 8
  %147 = getelementptr inbounds %struct.socket, %struct.socket* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %145, %149
  %151 = load %struct.stat*, %struct.stat** %8, align 8
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.socket*, %struct.socket** %4, align 8
  %154 = getelementptr inbounds %struct.socket, %struct.socket* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @kauth_cred_getuid(i32 %155)
  %157 = load %struct.stat*, %struct.stat** %8, align 8
  %158 = getelementptr inbounds %struct.stat, %struct.stat* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.socket*, %struct.socket** %4, align 8
  %160 = getelementptr inbounds %struct.socket, %struct.socket* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @kauth_cred_getgid(i32 %161)
  %163 = load %struct.stat*, %struct.stat** %8, align 8
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %141, %73
  %166 = load %struct.socket*, %struct.socket** %4, align 8
  %167 = getelementptr inbounds %struct.socket, %struct.socket* %166, i32 0, i32 1
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = bitcast {}** %171 to i32 (%struct.socket*, i8*, i32)**
  %173 = load i32 (%struct.socket*, i8*, i32)*, i32 (%struct.socket*, i8*, i32)** %172, align 8
  %174 = load %struct.socket*, %struct.socket** %4, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 %173(%struct.socket* %174, i8* %175, i32 %176)
  store i32 %177, i32* %7, align 4
  %178 = load %struct.socket*, %struct.socket** %4, align 8
  %179 = call i32 @socket_unlock(%struct.socket* %178, i32 1)
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i8* @kauth_cred_getuid(i32) #1

declare dso_local i8* @kauth_cred_getgid(i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
